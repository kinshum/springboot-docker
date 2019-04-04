import React, {Component} from 'react';
import { observer } from "mobx-react";
import { Button , Col , Row ,Breadcrumb} from 'antd';
import SettlementEditInfoForm from "./SettlementEditInfoForm";
import Css from "../SettlementStyle";

@observer
export default class SettlementEditContainer extends Component
{
    constructor(props){
        super(props);
        this.id = this.props.match.params.id;
        props.store.selectCountry({pid:0});
        props.store.clearData();
        props.store.SettlementSelectByKey({id:this.id});
    }
    componentWillReceiveProps=(nextprops)=>{
        nextprops.store.SettlementSelectByKey({id:nextprops.match.params.id});
    }
    getInfoForm(form){
        this.InfoForm = form;
    }
    handleSubmit(){
        this.InfoForm.validateFields((err,data)=>{
            if(!err){
                this.InfoFormDataRow = data;
                this.props.store.SettlementEdit(this.InfoFormDataRow,this.id);
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
                    <Breadcrumb.Item>编辑结算对象</Breadcrumb.Item>
                </Breadcrumb>
                <SettlementEditInfoForm
                    country={this.props.store.countryDataTable}
                    store = {this.props.store.SettlementDetail}
                    InfoForm = {this.getInfoForm.bind(this)}
                    /*SettlementOnlyOne = {this.props.store.SettlementOnlyOne.bind(this)}*/
                    SettlementOnlyOneName = {this.props.store.SettlementOnlyOneName.bind(this)}
                />
                <Row style={style.ManagerBottomRow}>
                    <Col span={10}>
                        <Button type="primary" style={style.SubmitBtn} onClick={this.handleSubmit.bind(this)}>保存</Button>
                    </Col>
                    <Col span={14}>
                        <Button type="default" style={style.CancelBtn} onClick={()=>{window.location.hash="Frame/SettlementList"}}>返回</Button>
                    </Col>
                </Row>
            </div>
        )
    }
}