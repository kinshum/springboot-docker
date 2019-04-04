import React, {Component} from 'react';
import { observer } from "mobx-react";
import Css from "../AccountingStyle";
import { Form , Input , Button ,Icon, Col , Row ,Select,DatePicker,Checkbox,InputNumber,notification,Modal} from 'antd';
const FormItem = Form.Item;
const Option = Select.Option;
const confirm = Modal.confirm;
let uuid=1;

@observer
class ProductComponent extends Component {
    constructor(props) {
        super(props);
        props.postForm(props.form);
        props.categoryOutLevel({pid:0});
        this.incomeIds=[];
        this.checkedOut=true;
    }
    onChange(event){
        this.checkedOut=event.target.checked;
        this.props.checkedOut(this.checkedOut);
    }
    handleSettlementSelect = (k,value, option) =>{
        this.props.form.getFieldDecorator(`settlementObjectName-${k}`, {initialValue: option.props.children})
        this.props.form.getFieldDecorator(`settlementCurrency-${k}`, {initialValue: option.props.currency})
        let currency = this.props.form.getFieldValue(`currency-${k}`)
        if(currency){
            this.props.myexchangeRate({currency1:currency,currency2:option.props.currency},this.props.form);
        }
    }
    handleCategorySelect(k,value,option){
        this.props.form.getFieldDecorator(`categoryLevel1Code-${k}`,{initialValue:option.props.content});
        this.props.categoryOutLevel2({pid:option.props.content});
    }
    handleCategory2Select(k,value,option){
        this.props.form.getFieldDecorator(`categoryLevel2Code-${k}`, {initialValue: option.props.content});
    }
    handleAmount(k,value){
        let currency = this.props.form.getFieldValue(`currency-${k}`);
        let accountCurrency = this.props.form.getFieldValue(`accountCurrency-${k}`);
        if(currency){
            this.props.accountAmountOut({currency1:currency,currency2:accountCurrency},this.props.form,k);
        }
    }
    handleCurrencySelect(k,value,option){
         let accountCurrency = this.props.form.getFieldValue(`accountCurrency-${k}`);
         let settlementCurrency = this.props.form.getFieldValue(`settlementCurrency-${k}`);
         let amount = this.props.form.getFieldValue(`amount-${k}`);
        if(settlementCurrency){
            this.props.myexchangeRate({currency1:value,currency2:settlementCurrency},this.props.form,k);
        }
        if(amount){
            this.props.accountAmountOut({currency1:value,currency2:accountCurrency},this.props.form,k);
        }else{
            this.props.accountGetrate({currency1:value,currency2:accountCurrency},this.props.form,k);
        }
    }
    handleOnChange(event)
    {
        if(event.target.checked)
        {
            this.incomeIds.push({
                index:event.target.content,
            })
        }
        else
        {
            this.incomeIds.map((income,incomeIndex)=>{

                if(income.index == event.target.content)
                {
                    this.incomeIds.splice(incomeIndex, 1);
                }
            })
        }
    }
    add(){
        uuid++;
        const { form } = this.props;
        const keys = form.getFieldValue('keys');
        const nextKeys = keys.concat(uuid);
        form.setFieldsValue({
            keys: nextKeys,
        });
    }
    remove(){
        let { getFieldValue,setFieldsValue } = this.props.form;
        let keys = getFieldValue('keys');
        if(this.incomeIds.length>0){
            confirm({
                title:"确定要删除该支出明细吗?",
                width:300,
                onOk:()=>{
                    let dataTable=[];
                    this.incomeIds.map((income,index)=>{
                        keys.map((k,i)=>{
                            if(income.index == k)
                            {
                                keys.splice(i,1);
                            }
                        })
                    })
                    this.incomeIds = [];
                    setFieldsValue({
                        keys: keys,
                    })
                    this.props.accountDaleteOut(keys,this.props.form)
                },
                onCancel(){}
            })
        }
        else
        {
            notification.open
            ({
                message: '删除错误',
                description: '请选择支出明细',
            });
        }

    }

    render(){
        let {style} = Css;
        const { getFieldDecorator, getFieldValue } = this.props.form;
        let {outDataTable,outDataTable2} = this.props;
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
        let currency ;
        this.props.currency.map((item,index)=>{
            currency = item.currency
        })
        let keys=[];
        getFieldDecorator('keys',{initialValue:[0]});
        keys = getFieldValue('keys');
        const formItems = keys.map((k, index) =>
        {
            return (
                <Form key={k}>
                    <Row>
                        <Col span="0">
                            <FormItem label="" >
                                {getFieldDecorator(`inout-${k}`, {
                                    initialValue:0
                                })(<Input />)}
                            </FormItem>
                        </Col>
                        <Col span="0">
                            <FormItem label="" >
                                {getFieldDecorator(`myExchangeRate-${k}`, {
                                })(<InputNumber min={0} step={0.001}/>)}
                            </FormItem>
                        </Col>
                        <Col span="0">
                            <FormItem label="" >
                                {getFieldDecorator(`accountCurrency-${k}`, {
                                    initialValue:currency
                                })(<Input />)}
                            </FormItem>
                        </Col>
                        <Col span={1}  >
                            <Checkbox  content={k} onChange={this.handleOnChange.bind(this)}></Checkbox>
                        </Col>
                        <Col span="3">
                            <FormItem label="" >
                                {getFieldDecorator(`settlementObjectId-${k}`, {
                                    rules: [{ required: true, message: '请填写结算对象！'}],
                                })(<Select showSearch
                                           filterOption={(input, option) => option.props.children.toLowerCase().indexOf(input.toLowerCase()) >= 0}
                                           onSelect={this.handleSettlementSelect.bind(this,k)}
                                >
                                    {
                                        this.props.data.map((item,index)=>{
                                            return(<Option value={item.id.toString()} currency={item.currency} key={item.id}>{item.orgCname}</Option>)
                                        })
                                    }
                                </Select>)}
                            </FormItem>
                        </Col>
                        <Col span="2">
                            <FormItem label="" >
                                {getFieldDecorator(`categoryLevel1Name-${k}`, {
                                    rules: [{ required: true, message: '请填写费用类别！'}],
                                })(<Select onSelect={this.handleCategorySelect.bind(this,k)}>
                                    {outDataTable.map(category=>{
                                        return <Option key={category.categoryName} content={category.id}>{category.categoryName}</Option>
                                    })}
                                </Select>)}
                            </FormItem>
                        </Col>
                        <Col span="3">
                            <FormItem label="" >
                                {getFieldDecorator(`categoryLevel2Name-${k}`, {
                                    rules: [{ required: true, message: '请填写费用明细！'}],
                                })(<Select  onSelect={this.handleCategory2Select.bind(this,k)}>
                                    {outDataTable2.map(category=>{
                                        return <Option key={category.categoryName} content={category.id}>{category.categoryName}</Option>
                                    })}
                                </Select>)}
                            </FormItem>
                        </Col>
                        <Col  span="2" >
                            <FormItem label="" >
                                {getFieldDecorator(`settleType-${k}`, {
                                    rules: [{ required: true, message: '请填写结算方式！'}],
                                })(<Select>
                                    <Option value="0">现结</Option>
                                    <Option value="1">月结</Option>
                                </Select>)}
                            </FormItem>
                        </Col>
                        <Col  span="2" >
                            <FormItem label="" >
                                {getFieldDecorator(`amount-${k}`, {
                                    rules: [{ required: true, message: '请填写交易金额！'}],
                                })( <InputNumber min={0} step={0.01} onChange={this.handleAmount.bind(this,k)} />)}
                            </FormItem>
                        </Col>
                        <Col  span={2} >
                            <FormItem label="" >
                                {getFieldDecorator(`currency-${k}`, {
                                    rules: [{ required: true, message: '请填写币种！'}],
                                })(<Select onSelect={this.handleCurrencySelect.bind(this,k)}>
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
                        <Col  span={2}>
                            <FormItem label="" >
                                {getFieldDecorator(`exchangeRate-${k}`, {
                                    rules: [{ required: true, message: '请填写汇率！'}],
                                })(<InputNumber min={0} step={0.001}/>)}
                            </FormItem>
                        </Col>
                        <Col  span={2} >
                            <FormItem label="" >
                                {getFieldDecorator(`settelmentAmount-${k}`, {
                                    rules: [{ required: true, message: '请填写总价！'}],
                                })( <InputNumber min={0} step={0.001}/>)}
                            </FormItem>
                        </Col>
                        <Col span="3">
                            <FormItem label="" >
                                {getFieldDecorator(`tradeTime-${k}`, {
                                    rules: [{ required: true, message: '请填写交易时间！'}],
                                })(<DatePicker className="fullWidth"/>)}
                            </FormItem>
                        </Col>
                        <Col span="2">
                            <FormItem label="" >
                                {getFieldDecorator(`note-${k}`, {
                                    rules: [{ message: '备注信息不能超过500字！',max:500 }],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                    </Row>
                </Form>
            );
        });
        return(
            <div>
                <div style={style.IncomeStyle}>
                    <Row style={{marginBottom:10}}>
                        <Col span="17" offset="1">
                            <span style={{fontSize:16,lineHeight:"50px"}}>支出明细 &nbsp;&nbsp;<Checkbox  defaultChecked onChange={this.onChange.bind(this)}/></span>
                        </Col>
                        <Col span="6">
                            <Button onClick={this.add.bind(this)} type="primary" style={style.CancelBtn}><Icon type="plus"/>新增</Button>
                            <Button onClick={this.remove.bind(this)} style={style.CancelBtn}><Icon type="delete" />删除</Button>
                        </Col>
                    </Row>
                    <Row style={style.IncomeTitle}>
                        <Col span={1}/>
                        <Col span={3}>结算对象</Col>
                        <Col span={2}>费用类别</Col>
                        <Col span={3}>费用明细</Col>
                        <Col span={2}>结算方式</Col>
                        <Col span={2}>交易金额</Col>
                        <Col span={2}>币种</Col>
                        <Col span={2}>账套汇率</Col>
                        <Col span={2}>总价</Col>
                        <Col span={3}>交易日期</Col>
                        <Col span={2}>备注</Col>
                    </Row>
                    <div style={style.IncomeContent}>
                        {formItems}
                    </div>
                    <Row>
                        <Col span={4} offset={19} style={{marginTop:15}}>
                            <FormItem {...formItemLayout} label="合计" >
                                {getFieldDecorator(`totalOut`, {
                                    initialValue:0,
                                })(<Input disabled={true}/>)}
                            </FormItem>
                        </Col>
                    </Row>
                </div>
            </div>
        )
    }
}

const AccountingOutcomeForm=Form.create()(ProductComponent);

export default AccountingOutcomeForm;