import React, {Component} from 'react';
import { observer } from "mobx-react";
import Css from "../AccountingStyle";
import { Form , Input ,InputNumber , Icon ,DatePicker, Col , Row ,Select} from 'antd';
import AccountingUploadFile from "./AccountingUploadFile";
const FormItem = Form.Item;
const Option = Select.Option;

@observer
class ProductComponent extends Component {
    fileList=[];
    constructor(props) {
        super(props);
        props.postForm(props.form);
    }
    setUploadFiled = (Files) => {
        this.props.getFileLists(Files);
        this.fileList = Files;
    }
    deleteFile = (File) => {
        this.props.deleteFile(File);
    }
    handleCategorySelect( value , option )
    {
        this.props.form.getFieldDecorator('categoryLevel1Code',{initialValue:option.props.content});
        this.props.categoryLevel2({pid:option.props.content});
    }
    handleCategory2Select( value , option )
    {
        this.props.form.getFieldDecorator('categoryLevel2Code',{initialValue:option.props.content});
    }
    handleSelect = (value, option) =>{
        this.props.form.getFieldDecorator('settlementObjectName', {initialValue:option.props.children})
        // this.props.form.getFieldDecorator('settlementObjectId', {initialValue:option.props.eventKey})
        this.props.form.getFieldDecorator('settlementCurrency', {initialValue:option.props.currency})
        let currency = this.props.form.getFieldValue('currency')
        if(currency){
            this.props.myexchangeRate({currency1:currency,currency2:option.props.currency},this.props.form);
        }
    }
    handleAmount(value){
        let currency = this.props.form.getFieldValue('currency');
        let accountCurrency = this.props.form.getFieldValue('accountCurrency');
        if(currency){
            this.props.accountAmount({currency1:currency,currency2:accountCurrency},this.props.form);
        }
    }
    handleCurrencySelect(value, option){
        let accountCurrency = this.props.form.getFieldValue('accountCurrency');
        let settlementCurrency = this.props.form.getFieldValue('settlementCurrency');
        let amount = this.props.form.getFieldValue('amount');
        if(amount){
            this.props.accountAmount({currency1:value,currency2:accountCurrency},this.props.form);
        }else{
            this.props.accountGetrate({currency1:value,currency2:accountCurrency},this.props.form);
        }
        if(settlementCurrency){
            this.props.myexchangeRate({currency1:value,currency2:settlementCurrency},this.props.form);
        }

    }
    render() {
        let {style} = Css;
        const {getFieldDecorator} = this.props.form;
        let {categoryDataTable,categoryDataTable2,exchangeRate,myExchangeRate} = this.props;
        let currency ;
        this.props.currency.map((item,index)=>{
            currency = item.currency
        })
        let formItemLayout = {
            labelCol: {
                xs: { span: 24 },
                sm: { span: 6 },
            },
            wrapperCol: {
                xs: { span: 24 },
                sm: { span: 14 },
            },
        };
        let formItemLayout1 = {
            labelCol: {
                xs: { span: 24 },
                sm: { span: 2 },
            },
            wrapperCol: {
                xs: { span: 24 },
                sm: { span: 21 },
            },
        };
        let formItemLayout2 = {
            labelCol: {
                xs: { span: 24 },
                sm: { span: 12 },
            },
            wrapperCol: {
                xs: { span: 24 },
                sm: { span: 12 },
            },
        };
        let formItemLayout3 = {
            labelCol: {
                xs: { span: 24},
                sm: { span: 12},
            },
            wrapperCol: {
                xs: { span: 24 },
                sm: { span: 12 ,offset:4},
            },
        };
        getFieldDecorator('inout',{initialValue:this.props.accounType})
        // this.props.businessTypeDataTable.map((item,index)=>{
        //     console.log(item);
        // })
        return (
            <div>
                <Form style={style.FormStyle}>
                    <div style={{height:20,borderBottom:"1px solid #ccc"}}></div>
                    <p style={style.hFormStyle}>&nbsp;&nbsp;<Icon type="book" /> {
                        (this.props.accounType=="1")?"新增收入":
                            (this.props.accounType=="0")?"新增支出":null
                    }&nbsp;&nbsp;</p>
                    <Row style={{marginTop:30}}>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="业务编码" >
                                {getFieldDecorator('refNo', {
                                    rules: [{ required: true, message: '请填写业务编码！'},
                                        { max:20, message: '业务编码过长！'}],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                        <FormItem {...formItemLayout}  label="结算对象" >
                            {getFieldDecorator('settlementObjectId', {
                                rules: [{ required: true, message: '请填写结算对象！'}]
                            })(<Select showSearch
                                       filterOption={(input, option) => option.props.children.toLowerCase().indexOf(input.toLowerCase()) >= 0} onSelect={this.handleSelect.bind(this)}>
                                {
                                    this.props.data.map((item,index)=>{
                                        return(<Option value={item.id.toString()} currency={item.currency} key={item.id}>{item.orgCname}</Option>)
                                    })
                                }
                            </Select>)}
                        </FormItem>
                    </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="结算方式" >
                                {getFieldDecorator('settleType', {
                                    rules: [{ required: true, message: '请填写结算方式！'}],
                                })(<Select>
                                    <Option value="0">现结</Option>
                                    <Option value="1">月结</Option>
                                </Select>)}
                            </FormItem>
                        </Col>
                    </Row>
                    <Row>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="业务类型" >
                                {getFieldDecorator('businessType', {
                                    rules: [{ required: true, message: '请填写业务类型！'}],
                                })(<Select>
                                    {
                                        this.props.businessTypeDataTable.map((item,index)=>{
                                            return(
                                                <Option value={item.businessTypeName} key={item.id}>{item.businessTypeName}</Option>
                                            )
                                        })
                                    }
                                </Select>)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="交易时间" >
                                {getFieldDecorator('tradeTime', {
                                    rules: [{ required: true, message: '请填写交易时间！'}],
                                })(<DatePicker  className="fullWidth"/>)}
                            </FormItem>
                        </Col>
                    </Row>
                    <Row>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="费用类别" >
                                {getFieldDecorator('categoryLevel1Name', {
                                    rules: [{ required: true, message: '请填写费用类别！'}],
                                })(<Select onSelect={this.handleCategorySelect.bind(this)}>
                                    {categoryDataTable.map(category=>{
                                        return <Option key={category.categoryName} content={category.id}>{category.categoryName}</Option>
                                    })}
                                </Select>)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="费用明细" >
                                {getFieldDecorator('categoryLevel2Name', {
                                    rules: [{ required: true, message: '请填写费用明细！'}],
                                })(<Select  onSelect={this.handleCategory2Select.bind(this)}>
                                    {categoryDataTable2.map(category=>{
                                        return <Option key={category.categoryName} content={category.id} >{category.categoryName}</Option>
                                    })}
                                </Select>)}
                            </FormItem>
                        </Col>
                    </Row>
                    <Row>
                        <Col span="4">
                            <FormItem {...formItemLayout2}  label="交易金额" >
                                {getFieldDecorator('amount', {
                                    rules: [{ required: true, message: '请填写交易金额！'}],
                                })( <InputNumber min={0} step={0.01} onChange={this.handleAmount.bind(this)} />)}
                            </FormItem>
                        </Col>
                        <Col span="4">
                            <FormItem {...formItemLayout3}  label="" >
                                {getFieldDecorator('currency', {
                                    rules: [{ required: true, message: '请填写币种！'}],
                                })(<Select onSelect={this.handleCurrencySelect.bind(this)}>
                                    <Option value="AUD">AUD</Option>
                                    <Option value="CNY">CNY</Option>
                                    <Option value="EUR">EUR</Option>
                                    <Option value="GBP">GBP</Option>
                                    <Option value="HKD">HKD</Option>
                                    <Option value="JPY">JPY</Option>
                                    <Option value="USD">USD</Option>
                                </Select>)}
                            </FormItem>
                        </Col>
                        <Col span="4">
                            <FormItem {...formItemLayout2}  label="结算金额" >
                                {getFieldDecorator('settelmentAmount', {
                                    rules: [{ required: true, message: '请填写结算金额！'}],
                                })( <InputNumber min={0} step={0.01}/>)}
                            </FormItem>
                        </Col>
                        <Col span="4">
                            <FormItem {...formItemLayout3}  label="" >
                                {getFieldDecorator('accountCurrency', {
                                    initialValue:currency
                                })(<Input disabled={true}/>)}
                            </FormItem>
                        </Col>

                        <Col span="8">
                            <FormItem {...formItemLayout}  label="账套汇率" >
                                {getFieldDecorator('exchangeRate', {
                                    rules: [{ required: true, message: '请填写账套汇率！'}],
                                    initialValue:exchangeRate
                                })(<InputNumber min={0} step={0.001}/>)}
                            </FormItem>
                        </Col>
                    </Row>
                    <Row style={{display:"none"}}>
                        <Col span="4">
                            <FormItem {...formItemLayout2}  label="结算对象汇率" >
                                {getFieldDecorator('myExchangeRate', {
                                    initialValue:myExchangeRate
                                })(<InputNumber min={0} step={0.001}/>)}
                            </FormItem>
                        </Col>
                    </Row>
                    <Row>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="交易概要" >
                                {getFieldDecorator('accountBrief', {
                                    rules: [{ message: '交易概要不能超过20字！',max:20 }],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                    </Row>
                    <Row>
                        <Col span="24">
                            <FormItem {...formItemLayout1}  label="备注信息" >
                                {getFieldDecorator('note', {
                                    rules: [{ message: '备注信息不能超过500字！',max:500 }],
                                })(<Input type="textarea" rows={7}/>)}
                            </FormItem>
                        </Col>
                    </Row>
                    <Row>
                        <Col span={24}>
                            <FormItem {...formItemLayout1} label="上传附件" extra="">
                               <AccountingUploadFile
                                   setUploadFiled = {this.setUploadFiled.bind(this)}
                                   deleteFile={this.deleteFile.bind(this)}
                                   // delLocalAttachment={this.delLocalAttachment.bind(this)}
                                   fileList = {this.fileList}
                                   success={this.props.success}
                               />
                            </FormItem>
                        </Col>
                    </Row>
                </Form>
            </div>
        )
    }
}

const AccountingAddForm=Form.create()(ProductComponent);

export default AccountingAddForm;