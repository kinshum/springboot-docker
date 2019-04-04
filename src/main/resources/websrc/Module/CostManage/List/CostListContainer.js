import React, {Component} from 'react';
import { observer } from "mobx-react";
import {Row,Col,Icon,Pagination,Breadcrumb,Tooltip,Table } from 'antd';
import Css from "../CostStyle";
import CostInfoForm from "./CostInfoForm"
import * as cows from "../../Limits/Permission";

@observer
export default class CostListContainer extends Component
{
    constructor(props){
        super(props);
        this.data = {};
        const {condition,current,pageSize}=this.props.store;
        props.store.CostQuery({condition,current,pageSize});
        props.store.CostTotalCount({condition});
        this.state = {
            pagination: false,
        };
    }
    changePage(page){
        let current=page;
        const {condition,pageSize}=this.props.store;
        this.props.store.CostQuery({condition,current,pageSize});
    }
    getInfoForm(form){
        this.InfoForm = form;
    }
    search(){
        let condition;
        this.InfoForm.validateFields((err,data)=>{
            if(!err){
                condition = data;
                condition.categoryName = (data.categoryName)?(data.categoryName).trim():undefined;
                condition.pid = 0;
                const {current,pageSize}=this.props.store;
                this.props.store.CostQuery({condition,current,pageSize});
                this.props.store.CostTotalCount({condition});
            }
        })
    }
    goTo=(url,arg)=>{
        this.props.addTab(url,arg);
    }
    render(){
        let {style}=Css;
        const columns = [
            {
            title: '序号',
            dataIndex: '',
            key: '',
            render: (text, record,index) => (
                <span>{index+1}</span>
            )
        },{
            title: '费用类别编号',
            dataIndex: 'categoryCode',
            key: 'categoryCode',
        },{
            title: '费用类别名称',
            dataIndex: 'categoryName',
            key: 'categoryName',
        },{
            title: '备注',
            dataIndex: 'note',
            key: 'note',
            render: (text, record) => (
                <span>
                    <Tooltip placement="top" title={record.note} arrowPointAtCenter>
                        <span style={{cursor:"pointer"}}>查看备注</span>
                    </Tooltip>
                </span>
            )
        }, {
            title: '操作',
            dataIndex: '',
            key: '',
            render: (text, record) => (
                <span>
                    <Tooltip placement="top" title="详情" arrowPointAtCenter>
                        <a onClick={this.goTo.bind(this,"/Frame/CostManageDetail",`${record.id}`)}><i className="iconfont icon-chakan" /></a><span className="ant-divider" />
                    </Tooltip>
                    {
                        (!cows.CategoryEditAction)?"":
                            <Tooltip placement="top" title="编辑" arrowPointAtCenter>
                                <a onClick={this.goTo.bind(this,"/Frame/CostManageEdit",`${record.id}`)}><i className="iconfont icon-bianji2" /></a>
                            </Tooltip>
                    }
                </span>
            )
        }];
        const {current,pageSize,totalCount,condition}=this.props.store;
        console.log(condition.categoryName,90);
        return(
            <div>
                <Breadcrumb separator=">" className="breadcrumb">
                    <Breadcrumb.Item href="#/Frame/Settlement/myHome">首页</Breadcrumb.Item>
                    <Breadcrumb.Item>费用管理</Breadcrumb.Item>
                </Breadcrumb>
                <div style={{margin:'0px 10px'}}>
                    <CostInfoForm
                        searchData = {this.data}
                        search = {this.search.bind(this)}
                        postForm = {this.getInfoForm.bind(this)}
                        addTab={this.props.addTab}
                        condition={condition.categoryName!=="undefined"?{...condition}:""}

                    />
                    <div style={style.ListTable}>
                        <Table rowKey={record => record.id} columns={columns} dataSource={[...this.props.store.CostDataTable]} pagination={this.state.pagination}  size="middle"/>
                    </div>
                </div>
                <Pagination style={style.Pagination} current={current} pageSize={pageSize} total={totalCount} onChange={this.changePage.bind(this)}/>
            </div>
        )
    }
}