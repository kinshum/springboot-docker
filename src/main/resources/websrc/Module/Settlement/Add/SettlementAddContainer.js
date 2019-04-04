import React, {Component} from 'react';
import { observer } from "mobx-react";
import {Button , Col , Row ,Breadcrumb} from 'antd';
import SettlementAddInfoForm from "./SettlementAddInfoForm";
import Css from "../SettlementStyle";

@observer
export default class SettlementAddContainer extends Component
{
    constructor(props){
        super(props);
        props.store.selectCountry({pid:0});
    }
    getInfoForm(form){
        this.InfoForm = form;
    }
    handleSubmit(){
        this.InfoForm.validateFields((err,data)=>{
            if(!err){
                this.InfoFormDataRow = data;
                this.props.store.SettlementAdd(this.InfoFormDataRow)
            }
        })
    }
    render(){
        let {style} = Css;
        return(
            <div>
                <Breadcrumb separator=">" className="breadcrumb">
                    <Breadcrumb.Item href="#/Frame/myHome">首页</Breadcrumb.Item>
                    <Breadcrumb.Item href="#/Frame/SettlementList">结算对象</Breadcrumb.Item>
                    <Breadcrumb.Item>新增结算对象</Breadcrumb.Item>
                </Breadcrumb>
                <SettlementAddInfoForm
                    InfoForm = {this.getInfoForm.bind(this)}
                    country={this.props.store.countryDataTable}
                    /*SettlementOnlyOne = {this.props.store.SettlementOnlyOne.bind(this)}*/
                    SettlementOnlyOneName = {this.props.store.SettlementOnlyOneName.bind(this)}
                />
                {/*<Row style={style.EmptyRow}></Row>*/}
                <Row style={style.ManagerBottomRow}>
                    <Col span={10}>
                        <Button type="primary" style={style.SubmitBtn} onClick = {this.handleSubmit.bind(this)}>保存</Button>
                    </Col>
                    <Col span={14}>
                        <Button type="default" style={style.CancelBtn} onClick={()=>{window.location.hash="Frame/SettlementList"}}>返回</Button>
                    </Col>
                </Row>
            </div>
        )
    }
}