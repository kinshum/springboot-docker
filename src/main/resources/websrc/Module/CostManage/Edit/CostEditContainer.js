import React, {Component} from 'react';
import { observer } from "mobx-react";
import { Button , Col , Row ,Breadcrumb} from 'antd';
import CostEditInfoForm from "./CostEditInfoForm";
import Css from "../CostStyle";

@observer
export default class CostEditContainer extends Component
{
    constructor(props){
        super(props);
        this.id = this.props.match.params.id;
        props.store.CostSelectByKey({id:this.id});
    }
    componentWillReceiveProps=(nextprops)=>{
        nextprops.store.CostSelectByKey({id:nextprops.match.params.id});

    }
    getInfoForm(form){
        this.InfoForm = form;
    }
    handleSubmit(){
        this.InfoForm.validateFields((err,data)=>{
            if(!err){
                this.InfoFormDataRow = data;
                this.props.store.CostEdit(this.InfoFormDataRow,this.id);
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
                    <Breadcrumb.Item>编辑费用</Breadcrumb.Item>
                </Breadcrumb>
                <CostEditInfoForm
                    store = {this.props.store.CostDetail}
                    InfoForm = {this.getInfoForm.bind(this)}
                    AccountOnlyOneCode = {this.props.store.AccountOnlyOneCode.bind(this)}
                    AccountOnlyOneName = {this.props.store.AccountOnlyOneName.bind(this)}
                />
                <Row style={style.ManagerBottomRow}>
                    <Col span={10}>
                        <Button type="primary" style={style.SubmitBtn} onClick={this.handleSubmit.bind(this)}>保存</Button>
                    </Col>
                    <Col span={14}>
                        <Button type="default" style={style.CancelBtn} onClick={()=>{window.location.hash="Frame/Settlement/CostManageList"}}>返回</Button>
                    </Col>
                </Row>
            </div>
        )
    }
}