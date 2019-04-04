import React, {Component} from 'react';
import { observer } from "mobx-react";
import {Row,Col,Icon,Button,Pagination,Breadcrumb } from 'antd';
import Css from "../UserStyle";
import UserInfoForm from "./UserInfoForm"

@observer
export default class UserListContainer extends Component
{
    constructor(props){
        super(props);
        this.page = {pageNum: 1, pageSize: 10};
        this.data = {};
    }

    render(){
        let {style}=Css;
        return(
            <div>
                <Breadcrumb separator=">" className="breadcrumb">
                    <Breadcrumb.Item href="#/Frame/myHome">首页</Breadcrumb.Item>
                    <Breadcrumb.Item>用户管理</Breadcrumb.Item>
                </Breadcrumb>
                <div style={{backgroundColor:"rgb(250, 250, 247)"}}>
                    <Row style={{padding:'10px 20px'}}>
                        <Col span="12">
                            <Button type="primary" className="btn" style={{backgroundColor:"#8F86F1"}} onClick={()=>{window.location.hash="Frame/UserManageAdd"}}><i className="iconfont icon-add" />&nbsp;新增用户</Button>
                            <Button type="primary" className="btn" style={{backgroundColor:"#FFCC00"}}><i className="iconfont icon-quanxian" />&nbsp;权限管理</Button>
                        </Col>
                        <Col span="12" style={{textAlign:"right"}}>
                            <Button type="primary" className="btn" style={{backgroundColor:"#8F86F1"}}><i className="iconfont icon-search" />&nbsp;搜索</Button>
                        </Col>
                    </Row>
                    <div style={{borderBottom:"1px solid #ccc"}}></div>
                    <UserInfoForm />
                </div>
                <div style={style.ListTable}>
                    <Row style={style.ListTableTopRow}>
                        <Col span="2">序号</Col>
                        <Col span="4">用户名</Col>
                        <Col span="3">真实姓名</Col>
                        <Col span="4">职位</Col>
                        <Col span="4">邮箱</Col>
                        <Col span="4">日期</Col>
                        <Col span="3">操作</Col>
                    </Row>
                    <Row className="TranStyle2">
                        <Col span="2">序号</Col>
                        <Col span="4">用户名</Col>
                        <Col span="3">真实姓名</Col>
                        <Col span="4">职位</Col>
                        <Col span="4">邮箱</Col>
                        <Col span="4">日期</Col>
                        <Col span="3">操作</Col>
                    </Row>
                </div>
                <Pagination style={style.Pagination} current={1} pageSize={6} total={6}/>
            </div>
        )
    }
}