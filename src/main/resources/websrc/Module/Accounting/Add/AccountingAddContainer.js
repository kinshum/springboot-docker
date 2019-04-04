import React, {Component} from 'react';
import { observer } from "mobx-react";
import { Button , Col , Row ,Breadcrumb} from 'antd';
import AccountingAddForm from "./AccountingAddForm";
import Css from "../AccountingStyle";

@observer
export default class AccountingAddContainer extends Component
{
    constructor(props){
        super(props);
        this.fileLists=[];
        this.attachment={};
        this.accounType = this.props.match.params.Type;
        props.store.AccountCategory({pid:0})
        props.store.accountObj();
        props.store.accountCurrency();
        props.store.businessType();

    }
    getAccountingAdd(form){
        this.accountingAddForm = form;
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
    handleSubmit(){
        let flagAdd = true;
        this.accountingAddForm.validateFields((err, data) => {
            if (!err) {
                this.accountingAddFormDataRow = data;
                this.fileLists.map((item) => {
                    if (!item.url) {
                        this.attachment.attachmentUrl=item.response.attachmentUrl;
                        this.attachment.pictureName=item.response.pictureName}
                })
            } else {
                flagAdd = false;
            }
        })
        if(flagAdd){
            this.props.store.insertAccount(this.accountingAddFormDataRow,this.attachment,this.accounType,this.accountingAddForm);
        }
    }
    categoryLevel(value){
        this.props.store.AccountCategory(value);
    }
    categoryLevel2(value){
        this.props.store.AccountCategory2(value);
    }
    getFileLists(files)
    {
        this.fileLists = files;
    }
    deleteFile(value){
        this.props.store.deleteFile(value);
    }
    // delLocalAttachment(values){
    //     this.props.store.delLocalAttachment(values);
    // }
    render(){
        let {style} = Css;
        let store = this.props.store;
        return(
            <div>
                <Breadcrumb separator=">" className="breadcrumb">
                    <Breadcrumb.Item href="#/Frame/myHome">首页</Breadcrumb.Item>
                    <Breadcrumb.Item href="#/Frame/accountingList">记账管理</Breadcrumb.Item>
                    <Breadcrumb.Item>{
                        (this.accounType=="1")?"新增收入":
                        (this.accounType=="0")?"新增支出":null
                    }</Breadcrumb.Item>
                </Breadcrumb>
                <div style={{margin: "0px 10px"}}>
                    <AccountingAddForm
                        postForm={this.getAccountingAdd.bind(this)}
                        accounType={this.accounType}
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
                        businessTypeDataTable={store.businessTypeDataTable}
                        getFileLists={this.getFileLists.bind(this)}
                        deleteFile={this.deleteFile.bind(this)}
                        success={store.success}
                    />

                </div>
                <Row style={{height:100}}/>
                <Row style={style.ManagerBottomRow}>
                    <Col span={10}>
                        <Button type="primary" style={style.SubmitBtn} onClick={this.handleSubmit.bind(this)}>保存并新建</Button>
                    </Col>
                    <Col span={14}>
                        <Button type="default" style={style.CancelBtn} onClick={()=>{window.location.hash="Frame/accountingList"}}>返回</Button>
                    </Col>
                </Row>
            </div>
        )
    }
}