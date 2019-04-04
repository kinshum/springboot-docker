import React, {Component} from 'react';
import { observer } from "mobx-react";
import moment from 'moment';
import Css from "../AccountingStyle";
import AccountingUploadFile from "./AccountingUploadFile";
import { Form , Input , Col ,DatePicker, Row ,Select,InputNumber} from 'antd';
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
    // deleteFile = (File) => {
    //     this.props.deleteFile(File);
    // }
    setTradeTime = (data,dateString) => {
        this.props.form.setFieldsValue({tradeTime:dateString});
    };
    handleCategorySelect( value , option )
    {
        this.props.form.setFieldsValue({'categoryLevel1Code':option.props.content});
        this.props.categoryLevel2({pid:option.props.content});
    }
    handleCategory2Select( value , option )
    {
        this.props.form.setFieldsValue({'categoryLevel2Code':option.props.content});
    }
    handleAmount(value){
        let currency = this.props.form.getFieldValue('currency');
        let accountCurrency = this.props.form.getFieldValue('accountCurrency');
        if(currency){
            this.props.accountAmount({currency1:currency,currency2:accountCurrency},this.props.form);
        }
    }
    handleSelect = (value, option) =>{
        this.props.form.setFieldsValue({'settlementObjectName':option.props.children})
        this.props.form.setFieldsValue({'settlementObjectId':option.props.eventKey})
        this.props.form.getFieldDecorator('settlementCurrency', {initialValue:option.props.currency})
        let currency = this.props.form.getFieldValue('currency');
        if(currency){
            this.props.myexchangeRate({currency1:currency,currency2:option.props.currency},this.props.form);
        }
    }
    handleCurrencySelect(value, option){
        let accountCurrency = this.props.form.getFieldValue('accountCurrency');
        let settlementCurrency = this.props.form.getFieldValue('settlementCurrency');
        let amount = this.props.form.getFieldValue('amount');
        if(amount) {
            this.props.accountAmount({currency1: value, currency2: accountCurrency}, this.props.form);
        }else{
            this.props.accountGetrate({currency1: value, currency2: accountCurrency}, this.props.form);
        }
        if(settlementCurrency){
            this.props.myexchangeRate({currency1:value,currency2:settlementCurrency},this.props.form);
        }else{
            this.props.myexchangeRate({currency1:value,currency2:this.props.account.settlementCurrency},this.props.form);
        }
    }

    render() {
        let {style} = Css;
        const {getFieldDecorator} = this.props.form;
        if(this.props.attachment){
            if(this.props.attachment.attachmentUrl) {
                this.fileList = [{
                    url: localStorage.getItem('appHost') + "/file/attachment/" + this.props.attachment.attachmentUrl,
                    name: this.props.attachment.pictureName,
                    uid: this.props.attachment.id ? this.props.attachment.id : -1,
                    status: "done",
                }];
            }
        }
        let {categoryDataTable,categoryDataTable2,exchangeRate,account,myExchangeRate} = this.props;
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
        getFieldDecorator('id',{initialValue:this.props.accountId})
        getFieldDecorator('categoryLevel1Code',{initialValue:account.categoryLevel1Code})
        getFieldDecorator('categoryLevel1Name',{initialValue:account.categoryLevel1Name})
        getFieldDecorator('categoryLevel2Code',{initialValue:account.categoryLevel2Code})
        getFieldDecorator('categoryLevel2Name',{initialValue:account.categoryLevel2Name})
        getFieldDecorator('settlementObjectId',{initialValue:account.settlementObjectId})
        getFieldDecorator('settlementObjectName',{initialValue:account.settlementObjectName})
        return (
            <div>
                <Form style={style.FormStyle}>
                    <div style={{height:20,borderBottom:"1px solid #ccc"}}></div>
                    <p style={style.hFormStyle}>&nbsp;&nbsp;{account.itemId}&nbsp;&nbsp;</p>
                    <Row style={{marginTop:30}}>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="业务编码" >
                                {getFieldDecorator('refNo', {
                                    rules: [{ required: true, message: '请填写业务编码！'},
                                        { max:20, message: '业务编码过长！'}],
                                    initialValue:account.refNo
                                })(<Input />)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="结算对象" >
                                {getFieldDecorator('settlementObject', {
                                    rules: [{ required: true, message: '请填写结算对象！'}],
                                    initialValue:account.settlementObjectName
                                })(<Select  showSearch
                                            filterOption={(input, option) => option.props.children.toLowerCase().indexOf(input.toLowerCase()) >= 0}
                                            onSelect={this.handleSelect.bind(this)}>
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
                                    initialValue:account.settleType
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
                                    initialValue:account.businessType
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
                                    initialValue:account.tradeTime?moment(account.tradeTime):"",
                                })(<DatePicker onChange={this.setTradeTime.bind(this)} className="fullWidth"/>)}

                                </FormItem>
                        </Col>
                    </Row>
                    <Row>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="费用类别" >
                                {getFieldDecorator('categoryLevel1Name', {
                                    rules: [{ required: true, message: '请填写费用类别！'}],
                                    initialValue:account.categoryLevel1Name
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
                                    initialValue:account.categoryLevel2Name
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
                                    initialValue:account.amount
                                })(<InputNumber min={0} step={0.01} onChange={this.handleAmount.bind(this)}/>)}
                            </FormItem>
                        </Col>
                        <Col span="4">
                            <FormItem {...formItemLayout3}  label="" >
                                {getFieldDecorator('currency', {
                                    rules: [{ required: true, message: '请填写币种！'}],
                                    initialValue:account.currency
                                })(<Select  onSelect={this.handleCurrencySelect.bind(this)}>
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
                                    rules: [{ required: true, message: '请填写交易金额！'}],
                                    initialValue:account.settelmentAmount
                                })( <InputNumber min={0} step={0.01}/>)}
                            </FormItem>
                        </Col>
                        <Col span="4">
                            <FormItem {...formItemLayout2}  label="账套币种" >
                                {getFieldDecorator('accountCurrency', {
                                    initialValue:account.accountCurrency
                                })(<Input disabled={true} />)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="汇率" >
                                {getFieldDecorator('exchangeRate', {
                                    rules: [{ required: true, message: '请填写汇率！'}],
                                    initialValue:account.exchangeRate
                                })(<InputNumber min={0} step={0.001}/>)}
                            </FormItem>
                        </Col>

                    </Row>
                    <Row>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="交易概要" >
                                {getFieldDecorator('accountBrief', {
                                    rules: [{ message: '交易概要不能超过20字！',max:20 }],
                                    initialValue:account.accountBrief
                                })(<Input />)}
                            </FormItem>
                        </Col>
                        {/*<Col span="8">*/}
                            {/*<FormItem {...formItemLayout}  label="总额" >*/}
                                {/*{getFieldDecorator('settelmentAmount', {*/}
                                    {/*rules: [{ required: true, message: '请填写总额！'}],*/}
                                    {/*initialValue:account.settelmentAmount*/}
                                {/*})(<Input />)}*/}
                            {/*</FormItem>*/}
                        {/*</Col>*/}
                    </Row>
                    <Row style={{display:"none"}}>
                        <Col span="4">
                            <FormItem {...formItemLayout2}  label="结算对象汇率" >
                                {getFieldDecorator('myExchangeRate', {
                                    initialValue:account.myExchangeRate
                                })(<InputNumber min={0} step={0.001}/>)}
                            </FormItem>
                        </Col>
                    </Row>
                    <Row>
                        <Col span="24">
                            <FormItem {...formItemLayout1}  label="备注信息" >
                                {getFieldDecorator('note', {
                                    rules: [{ message: '备注信息不能超过500字！',max:500 }],
                                    initialValue:account.note
                                })(<Input type="textarea" rows={7}/>)}
                            </FormItem>
                        </Col>
                    </Row>
                    <Row>
                        <Col span={24}>
                            <FormItem {...formItemLayout1} label="上传附件" extra="">
                                <AccountingUploadFile
                                    setUploadFiled = {this.setUploadFiled.bind(this)}
                                    deleteFile={this.props.deleteFile.bind(this)}
                                    // delLocalAttachment={this.delLocalAttachment.bind(this)}
                                    fileList = {this.fileList?this.fileList:[]}
                                />
                            </FormItem>
                        </Col>
                    </Row>
                </Form>
            </div>
        )
    }
}

const AccountingEditForm=Form.create()(ProductComponent);

export default AccountingEditForm;