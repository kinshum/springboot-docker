import React, {Component} from 'react';
import { observer } from "mobx-react";
import Css from "../SettlementStyle";
import { Form , Input , Icon  , Col , Row ,Select} from 'antd';
const Option = Select.Option;
const FormItem = Form.Item;

@observer
class SettlementComponent extends Component {
    constructor(props) {
        super(props);
        props.InfoForm(props.form);
    }
    /*handleSettlementOnlyOne = (rule, value, callback)=>{
        if(!value){
            callback();
        }else{
            this.props.SettlementOnlyOne(value,callback);
        }
    };*/
    handleSettlementOnlyOneName = (rule, value, callback)=>{
        if(!value){
            callback();
        }else{
            this.props.SettlementOnlyOneName(value,callback);
        }
    };
    render() {
        let {style} = Css;
        const {getFieldDecorator} = this.props.form;
        let formItemLayout = {
            labelCol: {
                xs: { span: 24 },
                sm: { span: 7 },
            },
            wrapperCol: {
                xs: { span: 24 },
                sm: { span: 16 },
            },
        };
        return (
            <div>
                <Form style={style.FormStyle}>
                    <div style={{height:20,borderBottom:"1px solid #ccc"}}></div>
                    <p style={style.hFormStyle}>&nbsp;&nbsp;<Icon type="book" /> 新增结算对象&nbsp;&nbsp;</p>
                    <Row style={{marginTop:30}}>
                        {/*<Col span="8">
                            <FormItem {...formItemLayout}  label="结算对象编码" >
                                {getFieldDecorator('settlementObjectId', {
                                    rules: [
                                        {required: true,message: '结算对象编码不能为空'},
                                        {validator: this.handleSettlementOnlyOne.bind(this)}
                                    ],
                                })(<Input />)}
                            </FormItem>
                        </Col>*/}
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="结算对象中文名" >
                                {getFieldDecorator('orgCname', {
                                    rules: [
                                        { required: true, message: '请填写结算对象中文名！'},
                                        { max:50,message: '结算对象中文名过长！'},
                                    ],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="结算对象英文名" >
                                {getFieldDecorator('orgEname', {
                                    rules: [
                                        { required: true, message: '请填写结算对象英文名！'},
                                        { max:100,message: '结算对象中文名过长！'},
                                    ],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="结算方式" >
                                {getFieldDecorator('settleType', {
                                    rules: [{ required: true, message: '请填写结算方式！'}],
                                })(
                                    <Select>
                                        <Option value="0">现结</Option>
                                        <Option value="1">月结</Option>
                                    </Select>
                                )}
                            </FormItem>
                        </Col>
                    </Row>
                    <Row>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="简称" >
                                {getFieldDecorator('orgShortname', {
                                    rules: [
                                        {required: true,message: '结算对象简称不能为空'},
                                        { max:20,message: '结算对象简称过长！'},
                                        {validator: this.handleSettlementOnlyOneName.bind(this)}
                                    ],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="所在国" >
                                {getFieldDecorator('country', {
                                })(
                                    <Select
                                        showSearch
                                        filterOption={(input, option) => option.props.children.toLowerCase().indexOf(input.toLowerCase()) >= 0}>
                                        {this.props.country.map((item,index)=><Option key={index} value={item.countryName}>{item.countryName}</Option>)}
                                    </Select>
                                )}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="结算币种" >
                                {getFieldDecorator('currency', {
                                    rules: [{ required: true, message: '请填写结算币种！'}],
                                })(
                                    <Select >
                                        <Option value="AUD">AUD</Option>
                                        <Option value="CNY">CNY</Option>
                                        <Option value="EUR">EUR</Option>
                                        <Option value="GBP">GBP</Option>
                                        <Option value="HKD">HKD</Option>
                                        <Option value="JPY">JPY</Option>
                                        <Option value="USD">USD</Option>
                                    </Select>
                                )}
                            </FormItem>
                        </Col>
                    </Row>
                    <Row>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="公司地址" >
                                {getFieldDecorator('address', {
                                    rules: [
                                        { required: true, message: '请填写公司地址！'},
                                        { max:100,message: '公司地址过长！'},
                                    ],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="联系人" >
                                {getFieldDecorator('contactPerson', {
                                    rules: [
                                        { required: true, message: '请填写联系人！'},
                                        { max:20,message: '联系人过长！'},
                                    ],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="联系人电话" >
                                {getFieldDecorator('contactPhone', {
                                    rules: [
                                        { required: true, message: '请填写联系人电话！'},
                                        { max:20,message: '联系人电话过长！'},
                                    ],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                    </Row>
                    <Row>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="开户银行" >
                                {getFieldDecorator('bankName', {
                                    rules: [
                                        //{ required: true, message: '请填写开户银行！'},
                                        { max:20,message: '开户银行过长！'},
                                    ],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="银行卡号" >
                                {getFieldDecorator('bankAccount', {
                                    rules: [
                                        //{ required: true, message: '请填写银行卡号！'},
                                        { max:20,message: '银行卡号过长！'},
                                    ],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="开户行地址" >
                                {getFieldDecorator('bankAddress', {
                                    rules: [
                                        //{ required: true, message: '请填写开户行地址！'},
                                        { max:100,message: '开户行地址过长！'},
                                    ],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                    </Row>
                </Form>
            </div>
        )
    }
}

const SettlementAddInfoForm=Form.create()(SettlementComponent);

export default SettlementAddInfoForm;