import React, {Component} from 'react';
import { observer } from "mobx-react";
import { Button , Col , Row ,Breadcrumb,notification} from 'antd';
import AccountingBasicForm from './AccountingBasicForm';
import AccountingIncomeForm from './AccountingIncomeForm';
import AccountingOutingForm from './AccountingOutingForm';
import Css from "../AccountingStyle";

@observer
export default class AccountingQuickContainer extends Component {
    constructor(props) {
        super(props);
        props.store.accountObj();
        props.store.businessType();
        props.store.accountCurrency();
        props.store.AccountCategory({pid:0});
        this.state={
            currency:null
        }
        this.inchecked=true;
        this.outchecked=true;
    }
    checkedIn(value){
        this.inchecked=value;
    }
    checkedOut(value){
        this.outchecked=value;
    }
    getBasicForm(form){
        this.basicForm = form;
    }
    getIncomeForm(form){
        this.incomeForm = form;
    }
    getOutcomeForm(form){
        this.outcomeForm = form;
    }
    getInDataTable(formData)
    {
        let inDataTable = new Array();
        formData.keys.map((key,index)=>
        {
            let dataRow={};
            dataRow.inout=formData["inout-"+key];
            dataRow.settlementObjectId=formData["settlementObjectId-"+key];
            dataRow.settlementObjectName=formData["settlementObjectName-"+key];
            dataRow.settlementCurrency=formData["settlementCurrency-"+key];
            dataRow.categoryLevel1Name=formData["categoryLevel1Name-"+key];
            dataRow.categoryLevel1Code=formData["categoryLevel1Code-"+key];
            dataRow.categoryLevel2Name=formData["categoryLevel2Name-"+key];
            dataRow.categoryLevel2Code=formData["categoryLevel2Code-"+key];
            dataRow.settleType=formData["settleType-"+key];
            dataRow.amount=formData["amount-"+key];
            dataRow.currency=formData["currency-"+key];
            dataRow.exchangeRate=formData["exchangeRate-"+key];
            dataRow.myExchangeRate=formData["myExchangeRate-"+key];
            dataRow.settelmentAmount=formData["settelmentAmount-"+key];
            dataRow.tradeTime=formData["tradeTime-"+key];
            dataRow.note=formData["note-"+key];
            dataRow.accountCurrency=formData["accountCurrency-"+key];
            inDataTable[index]=dataRow;
        })
        return inDataTable;
    }
    getOutDataTable(formData)
    {
        let outDataTable = new Array();
        formData.keys.map((key,index)=>
        {
            let dataRow={};
            dataRow.inout=formData["inout-"+key];
            dataRow.settlementObjectId=formData["settlementObjectId-"+key];
            dataRow.settlementObjectName=formData["settlementObjectName-"+key];
            dataRow.settlementCurrency=formData["settlementCurrency-"+key];
            dataRow.categoryLevel1Name=formData["categoryLevel1Name-"+key];
            dataRow.categoryLevel1Code=formData["categoryLevel1Code-"+key];
            dataRow.categoryLevel2Name=formData["categoryLevel2Name-"+key];
            dataRow.categoryLevel2Code=formData["categoryLevel2Code-"+key];
            dataRow.settleType=formData["settleType-"+key];
            dataRow.amount=formData["amount-"+key];
            dataRow.currency=formData["currency-"+key];
            dataRow.exchangeRate=formData["exchangeRate-"+key];
            dataRow.myExchangeRate=formData["myExchangeRate-"+key];
            dataRow.settelmentAmount=formData["settelmentAmount-"+key];
            dataRow.tradeTime=formData["tradeTime-"+key];
            dataRow.note=formData["note-"+key];
            dataRow.accountCurrency=formData["accountCurrency-"+key];
            outDataTable[index]=dataRow;
        })
        return outDataTable;
    }
    handleSubmit(){
        let flagIn = true;
        let flagOut = true;
        let flagBasic = true;
        let list=[];
        if(this.inchecked){
            this.incomeForm.validateFields((err, data) =>
            {
                if (!err&&data.keys.length>0)
                {
                    this.incomeDataTable = this.getInDataTable(data);
                }else{
                    flagIn=false;
                }
            })
        }
        if(this.outchecked){
            this.outcomeForm.validateFields((err, data) =>
            {
                if (!err&&data.keys.length>0)
                {
                    this.outcomeDataTable = this.getOutDataTable(data);
                }else{
                    flagOut=false;
                }
            })
        }
        this.basicForm.validateFields((err,data)=>{
            if(!err){
                this.basicFormDataRow = data;
            }else{
                flagBasic = false;
            }
        })
        if((flagIn&&flagOut&&flagBasic)){
            if(this.inchecked&&this.outchecked){
                list = this.incomeDataTable.concat(this.outcomeDataTable);
                this.props.store.insertList(this.basicFormDataRow,list,this.incomeForm,this.outcomeForm);
            }else if(this.inchecked&&!this.outchecked){
                list = this.incomeDataTable;
                this.props.store.insertList(this.basicFormDataRow,list,this.incomeForm,this.outcomeForm);
            }else if(!this.inchecked&&this.outchecked){
                list = this.outcomeDataTable;
                this.props.store.insertList(this.basicFormDataRow,list,this.incomeForm,this.outcomeForm);
            }else{
                notification.open
                ({
                    message: '添加错误',
                    description: '请选择要添加的收支类型！',
                });
            }
        }
    }
    accountGetrate(values,form,k){
        this.props.store.accountGetrate(values,form,k)
    }
    accountAmountIn(values,form,k){
        this.props.store.accountAmountIn(values,form,k,this.basicForm)
    }
    accountAmountOut(values,form,k){
        this.props.store.accountAmountOut(values,form,k,this.basicForm)
    }
    myexchangeRate(values,form,k){
        this.props.store.myexchangeRate(values,form,k)
    }
    categoryLevel(value){
        this.props.store.AccountCategory(value);
    }
    categoryLevel2(value){
        this.props.store.AccountCategory2(value);
    }
    categoryOutLevel(value){
        this.props.store.OutCategory(value);
    }
    categoryOutLevel2(value){
        this.props.store.OutCategory2(value);
    }
    accountDaleteIn(value,form){
        this.props.store.accountDaleteIn(value,form,this.basicForm);
    }
    accountDaleteOut(value,form){
        this.props.store.accountDaleteOut(value,form,this.basicForm);
    }
    render(){
        let {style} = Css;
        let store = this.props.store;
        return(
            <div>
                <Breadcrumb separator=">" className="breadcrumb">
                    <Breadcrumb.Item href="#/Frame/myHome">首页</Breadcrumb.Item>
                    <Breadcrumb.Item href="#/Frame/accountingList">记账管理</Breadcrumb.Item>
                    <Breadcrumb.Item>快捷添加</Breadcrumb.Item>
                </Breadcrumb>
                <div style={{margin:"0 10px"}}>
                    <AccountingBasicForm
                        data={store.accountObjdataTable}
                        businessTypeDataTable={store.businessTypeDataTable}
                        postForm={this.getBasicForm.bind(this)}
                    />
                    <AccountingIncomeForm
                        data={store.accountObjdataTable}
                        categoryDataTable={store.categoryDataTable}
                        categoryDataTable2={store.categoryDataTable2}
                        categoryLevel={this.categoryLevel.bind(this)}
                        categoryLevel2={this.categoryLevel2.bind(this)}
                        currency={store.accountCurrencydataTable}
                        accountGetrate={this.accountGetrate.bind(this)}
                        accountAmountIn={this.accountAmountIn.bind(this)}
                        myexchangeRate={this.myexchangeRate.bind(this)}
                        myExchangeRate={store.myExchangeRate}
                        postForm={this.getIncomeForm.bind(this)}
                        accountDaleteIn={this.accountDaleteIn.bind(this)}
                        checkedIn={this.checkedIn.bind(this)}
                    />
                    <AccountingOutingForm
                        data={store.accountObjdataTable}
                        outDataTable={store.outDataTable}
                        outDataTable2={store.outDataTable2}
                        categoryOutLevel={this.categoryOutLevel.bind(this)}
                        categoryOutLevel2={this.categoryOutLevel2.bind(this)}
                        currency={store.accountCurrencydataTable}
                        accountGetrate={this.accountGetrate.bind(this)}
                        accountAmountOut={this.accountAmountOut.bind(this)}
                        myexchangeRate={this.myexchangeRate.bind(this)}
                        myExchangeRate={store.myExchangeRate}
                        postForm={this.getOutcomeForm.bind(this)}
                        settlementCurrency = {this.state.currency}
                        accountDaleteOut={this.accountDaleteOut.bind(this)}
                        checkedOut={this.checkedOut.bind(this)}
                    />

                </div>

                <Row style={{height:100}}/>
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