import React, {Component} from 'react';
import { observer } from "mobx-react";
import Css from "../AccountingStyle";
import moment from 'moment';
import { Form , Input , Button ,Icon, Col , Row ,Select,DatePicker} from 'antd';
const FormItem = Form.Item;
const Option = Select.Option;

@observer
class ProductComponent extends Component {
    constructor(props) {
        super(props);
        props.postForm(props.form);
    }
    handleCheckTradeTime = (rule, value, callback) =>{
        let tradeTimeEnd = this.props.form.getFieldValue('tradeTimeEnd');
        if(tradeTimeEnd){
            if(tradeTimeEnd-value<0){
                callback('起始日期必须在截止日期之前！')
            }else{
                callback()
            }
        }
    }
    handleCheckTradeTimeEnd = (rule, value, callback) =>{
        let tradeTime = this.props.form.getFieldValue('tradeTime');
        if(tradeTime){
            if(!value){
                callback()
            }else if(value-tradeTime<0) {
                callback('起始日期必须在截止日期之前！');
            } else {
                callback();
            }
        }
    }
    handleSelect = (value, option) =>{
        if(value!==""){
            this.props.form.getFieldDecorator('settlementObjectName', {initialValue:option.props.children})
            this.props.form.getFieldDecorator('settlementObjectId', {initialValue:option.props.eventKey})
        }else{
            this.props.form.getFieldDecorator('settlementObjectName', {initialValue:""})
            this.props.form.getFieldDecorator('settlementObjectId', {initialValue:""})
        }

    }
    render() {
        let {style} = Css;
        const {getFieldDecorator} = this.props.form;
        getFieldDecorator('status',{initialValue:3})
        getFieldDecorator('settleType',{initialValue:1})
        var myDate = new Date(); //获取今天日期
        myDate.setDate(myDate.getDate() - 7);
        let formItemLayout = {
            labelCol: {
                xs: {span: 24},
                sm: {span: 8},
            },
            wrapperCol: {
                xs: {span: 24},
                sm: {span: 15},
            },
        };
        return (
            <div>
                <Form style={{paddingTop:20}}>
                    <Row>
                        <Col span="4">
                            <FormItem {...formItemLayout}  label="结算对象" >
                                {getFieldDecorator('settlementObjectId', {
                                    initialValue:this.props.condition.settlementObjectId,
                                    rules:[{required:true,message:"请选择结算对象！"}]
                                })(<Select showSearch
                                           filterOption={(input, option) => option.props.children.toLowerCase().indexOf(input.toLowerCase()) >= 0}
                                           onSelect={this.handleSelect.bind(this)}>
                                    <Option value="">请选择</Option>
                                    {
                                        this.props.data.map((item,index)=>{
                                            return(<Option value={item.id.toString()} key={item.id}>{item.orgCname}</Option>)
                                        })
                                    }
                                </Select>)}
                            </FormItem>
                        </Col>
                        <Col span="4">
                            <FormItem {...formItemLayout}  label="业务编码" >
                                {getFieldDecorator('refNo', {
                                    initialValue:this.props.condition.refNo,
                                })(<Input />)}
                            </FormItem>
                        </Col>
                        <Col span="4">
                            <FormItem {...formItemLayout}  label="收支" >
                                {getFieldDecorator('inout', {
                                    initialValue:this.props.condition.inout,

                                })(<Select>
                                        <Option value="">请选择</Option>
                                        <Option value="1">收入</Option>
                                        <Option value="0">支出</Option>
                                </Select>)}
                            </FormItem>
                        </Col>
                        <Col span="4">
                            <FormItem {...formItemLayout}  label="起始日期" >
                                {getFieldDecorator('tradeTime', {
                                    initialValue:this.props.condition.tradeTime?this.props.condition.tradeTime:moment(myDate),
                                    rules:[{required:true,message:"请选择起始日期！"},
                                        {validator: this.handleCheckTradeTime.bind(this)}],

                                })(<DatePicker className="fullWidth" />)}
                            </FormItem>
                        </Col>
                        <Col span="4">
                            <FormItem {...formItemLayout}  label="截止日期" >
                                {getFieldDecorator('tradeTimeEnd', {
                                    initialValue:this.props.condition.tradeTimeEnd?this.props.condition.tradeTimeEnd:moment(),
                                    rules:[{required:true,message:"请选择起始日期！"},
                                        {validator: this.handleCheckTradeTimeEnd.bind(this)}],


                                })(<DatePicker className="fullWidth"/>)}
                            </FormItem>
                        </Col>
                        <Col span="3" offset="1">
                            <Button type="primary" style={style.ListAddBtn} onClick={this.props.search.bind(this)}><i className="iconfont icon-search" />&nbsp;搜索</Button>
                        </Col>
                    </Row>
                </Form>
            </div>
        )
    }
}

const AccountingBuildForm=Form.create()(ProductComponent);

export default AccountingBuildForm;
