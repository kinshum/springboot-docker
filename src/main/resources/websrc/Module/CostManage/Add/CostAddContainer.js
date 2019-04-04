import React, {Component} from 'react';
import { observer } from "mobx-react";
import {  Button , Col , Row ,Breadcrumb} from 'antd';
import CostAddInfoForm from "./CostAddInfoForm";
import Css from "../CostStyle";

@observer
export default class CostAddContainer extends Component
{
    constructor(props){
        super(props);
    }
    getInfoForm(form){
        this.InfoForm = form;
    }
    handleSubmit(){
        this.InfoForm.validateFields((err,data)=>{
            if(!err){
                data.pid = 0;
                this.InfoFormDataRow = data;
                this.props.store.CostAdd(this.InfoFormDataRow)
            }
        })
    }
    render(){
        let {style} = Css;
        return(
            <div>
                <Breadcrumb separator=">" className="breadcrumb">
                    <Breadcrumb.Item href="#/Frame/myHome">首页</Breadcrumb.Item>
                    <Breadcrumb.Item href="#/Frame/CostManageList">费用管理</Breadcrumb.Item>
                    <Breadcrumb.Item>新增费用</Breadcrumb.Item>
                </Breadcrumb>
                <CostAddInfoForm
                    InfoForm = {this.getInfoForm.bind(this)}
                    AccountOnlyOneCode = {this.props.store.AccountOnlyOneCode.bind(this)}
                    AccountOnlyOneName = {this.props.store.AccountOnlyOneName.bind(this)}
                />
                <Row style={style.ManagerBottomRow}>
                    <Col span={10}>
                        <Button type="primary" style={style.SubmitBtn} onClick={this.handleSubmit.bind(this)}>保存</Button>
                    </Col>
                    <Col span={14}>
                        <Button type="default" style={style.CancelBtn} onClick={()=>{window.location.hash="Frame/CostManageList"}}>返回</Button>
                    </Col>
                </Row>
            </div>
        )
    }
}