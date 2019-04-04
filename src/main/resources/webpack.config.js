const path = require('path');
const webpack = require('webpack');

const HtmlwebpackPlugin = require('html-webpack-plugin');
//定义了一些文件夹的路径
const ROOT_PATH = path.resolve(__dirname);
const APP_PATH = path.resolve(ROOT_PATH, 'websrc');
const BUILD_PATH = path.resolve(ROOT_PATH, 'static');

module.exports = {
    entry: {
        app: path.resolve(APP_PATH, 'Index.js')
    },
    //输出的文件名 合并以后的js会命名为bundle.js
    output: {
        path: BUILD_PATH,
        filename: 'bundle.js'
    },

    resolve: {
        extensions: ['.js', '.jsx']
    },
    module: {
        loaders: [
            {
                test: /\.less$/,
                loader: 'style-loader!css-loader!less-loader'
            },
            {
                test: /\.scss$/,
                loader: 'style-loader!css-loader!sass-loader'
            },
            {
                test: /\.js[x]?/,
                exclude: /node_modules/,
                loader: 'babel-loader'
            }
            ]
    },
    plugins: [
        new HtmlwebpackPlugin({title: '结算管理系统'}),
        new webpack.optimize.CommonsChunkPlugin({name:'react', filename: 'react.js'}),
        //将React切换到生产环境
        //new webpack.DefinePlugin({'process.env': {NODE_ENV: JSON.stringify('production')}}),
        //压缩去除注释，warning（but 不好使）
        //new webpack.optimize.UglifyJsPlugin({output:{comments: false},compress:{warnings:false}})
    ],
    devServer: {
        port: 8090,
        publicPath: "/",
        historyApiFallback: true,  //不跳转
        disableHostCheck: true,
        proxy: [{
            context: ['/*/*.action', '/file/*/*'],
            target: 'http://localhost:8080',
            secure: false,
            changeOrigin: true
        }]
    },
};