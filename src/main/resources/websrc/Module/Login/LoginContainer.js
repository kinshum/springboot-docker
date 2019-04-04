import React, {Component} from 'react';
import { observer } from "mobx-react";
import LoginForm from './LoginForm';
import {Row,Col} from 'antd';

import Style from "./LoginStyle";

@observer export default class LoginContainer extends Component{
    constructor(){
        super();
    }

    componentWillReceiveProps = (nextProps) =>{

    }
    conLogin(values){
        this.props.store.login(values);
    }
    render(){
        let {loginform}=Style;
        let ht=window.innerHeight;
        let store=this.props.store;
        return (
            <div style={{ width:'100%' ,height:ht,background:'url("/image/login_bg.png")',backgroundSize: '100% 100%'}}>
                <div style={loginform.wholeDiv}>
                    <div style={loginform.smallDiv}>
                        <div style={loginform.totalForm}>
                            <Row  style={loginform.logoImg}>
                                <Col span="7"></Col>
                                <Col span="10" style={{height:"100%",background:'url(/image/chiyan_logo.png)',backgroundSize:"100% 100%"}}></Col>
                                <Col span="7"></Col>
                            </Row>
                            <LoginForm loading={store.loading} userLogin={this.conLogin.bind(this)}/>
                        </div>
                    </div>
                </div>
            </div>
        )
    }
}
