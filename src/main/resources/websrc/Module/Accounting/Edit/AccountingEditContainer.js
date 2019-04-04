import React, {Component} from 'react';
import { observer } from "mobx-react";
import Css from "../AccountingStyle";
import {  Button , Col , Row ,Breadcrumb} from 'antd';
import AccountingEditForm from "./AccountingEditForm";

@observer
export default class AccountingEditContainer extends Component
{
    constructor(props){
        super(props);
        // this.fileLists=this.props.store.attachment;
        this.fileLists=[];
        this.attachment={};
        this.accountId = this.props.match.params.Id;
        this.accountInout = this.props.match.params.Inout;
        props.store.selectAccount(this.accountId);
        props.store.accountObj();
        props.store.accountCurrency();
        props.store.AccountCategory({pid:0});
        props.store.businessType();
        let store = this.props.store;
    }
    getFileLists(files)
    {
        this.fileLists = files;
    }
    getAccountingEdit(form){
        this.accountingEditForm = form;
    }
    accountGetrate(values,form){
        this.props.store.accountGetrate(values,form)
    }
    accountAmount(values,form){
        this.props.store.accountAmount(values,form)
    }
    myexchangeRate(values,form){
        this.props.store.myexchangeRate(values,form)
    }
    deleteFile(value,id){
        this.props.store.deleteFile(value,this.accountId);
    }
    handleSubmit(){
        let flagEdit = true;
        this.accountingEditForm.validateFields((err, data) => {
            if (!err) {
                this.accountingEditFormDataRow = data;
                this.fileLists.map((item) => {
                    if (!item.url) {
                        this.attachment.attachmentUrl=item.response.attachmentUrl;
                        this.attachment.pictureName=item.response.pictureName}
                })
            } else {
                flagEdit = false;
            }
        })
        if(flagEdit){
            this.props.store.updateAccount(this.accountingEditFormDataRow,this.attachment);
        }
    }
    categoryLevel(value){
        this.props.store.AccountCategory(value);
    }
    categoryLevel2(value){
        this.props.store.AccountCategory2(value);
    }
    render(){
        let {style} = Css;
        let store = this.props.store;
        return(
            <div>
                <Breadcrumb separator=">" className="breadcrumb">
                    <Breadcrumb.Item href="#/Frame/myHome">首页</Breadcrumb.Item>
                    <Breadcrumb.Item href="#/Frame/accountingList">记账管理</Breadcrumb.Item>
                    <Breadcrumb.Item>{
                        (this.accountInout=="1")?"编辑收入":
                        (this.accountInout=="0")?"编辑支出":null
                    }</Breadcrumb.Item>
                </Breadcrumb>
                <AccountingEditForm
                    postForm={this.getAccountingEdit.bind(this)}
                    account={store.accountDataRow}
                    accountId={this.accountId}
                    categoryLevel={this.categoryLevel.bind(this)}
                    categoryLevel2={this.categoryLevel2.bind(this)}
                    categoryDataTable={store.categoryDataTable}
                    categoryDataTable2={store.categoryDataTable2}
                    data={store.accountObjdataTable}
                    currency={store.accountCurrencydataTable}
                    accountGetrate={this.accountGetrate.bind(this)}
                    accountAmount={this.accountAmount.bind(this)}
                    exchangeRate={store.exchangeRate}
                    myexchangeRate={this.myexchangeRate.bind(this)}
                    myExchangeRate={store.myExchangeRate}
                    inout={this.accountInout}
                    businessTypeDataTable={store.businessTypeDataTable}
                    getFileLists={this.getFileLists.bind(this)}
                    attachment={store.attachment}
                    deleteFile={this.deleteFile.bind(this)}
                />
                <Row style={style.EmptyRow}></Row>
                <Row style={style.ManagerBottomRow}>
                    <Col span={10}>
                        <Button type="primary" style={style.SubmitBtn} onClick={this.handleSubmit.bind(this)}>保存</Button>
                    </Col>
                    <Col span={14}>
                        <Button type="default" style={style.CancelBtn} onClick={()=>{window.location.hash="Frame/accountingList"}}>返回</Button>
                    </Col>
                </Row>
            </div>
        )
    }
}