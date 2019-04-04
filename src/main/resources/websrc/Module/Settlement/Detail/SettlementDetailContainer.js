import React, {Component} from 'react';
import { observer } from "mobx-react";
import { Form , Input , Icon , Button , Col , Row ,Select,Breadcrumb} from 'antd';
const Option = Select.Option;
const FormItem = Form.Item;
import Css from "../SettlementStyle";
const settleType = {0:'现结',1:'月结'};

@observer
class SettlementDetailComponent extends Component
{
    constructor(props){
        super(props);
        this.id = this.props.match.params.id;
        props.store.SettlementSelectByKey({id:this.id});
    }
    componentWillReceiveProps=(nextprops)=>{
        nextprops.store.SettlementSelectByKey({id:nextprops.match.params.id});
    }
    render(){
        let {style} = Css;
        const {getFieldDecorator} = this.props.form;
        let formItemLayout = {
            labelCol: {
                xs: { span: 24 },
                sm: { span: 7 },
            },
            wrapperCol: {
                xs: { span: 24 },
                sm: { span: 14 },
            },
        };
        let info = this.props.store.SettlementDetail;
        return(
            <div>
                <Breadcrumb separator=">" className="breadcrumb">
                    <Breadcrumb.Item href="#/Frame/myHome">首页</Breadcrumb.Item>
                    <Breadcrumb.Item href="#/Frame/SettlementList">结算对象</Breadcrumb.Item>
                    <Breadcrumb.Item>查看结算对象</Breadcrumb.Item>
                </Breadcrumb>
                <div style={{margin:'0px 10px'}}>
                <Form style={style.FormStyle}>
                    <div style={{height:20,borderBottom:"1px solid #ccc"}}></div>
                    <p style={style.hFormStyle}>&nbsp;&nbsp;<Icon type="book" /> 查看结算对象&nbsp;&nbsp;</p>
                    <Row style={{marginTop:30}}>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="结算对象编码" >
                                {getFieldDecorator('settlementObjectId', {
                                    initialValue:info.settlementObjectId,
                                })(<Input disabled/>)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="结算对象中文名" >
                                {getFieldDecorator('orgCname', {
                                    initialValue:info.orgCname,
                                })(<Input disabled/>)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="结算对象英文名" >
                                {getFieldDecorator('orgEname', {
                                    initialValue:info.orgEname,
                                })(<Input disabled/>)}
                            </FormItem>
                        </Col>
                    </Row>
                    <Row>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="简称" >
                                {getFieldDecorator('orgShortname', {
                                    initialValue:info.orgShortname,
                                })(<Input disabled/>)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="所在国" >
                                {getFieldDecorator('country', {
                                    initialValue:info.country,
                                })(<Input disabled/>)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="结算币种" >
                                {getFieldDecorator('currency', {
                                    initialValue:info.currency,
                                })(
                                    <Select disabled>
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
                                    initialValue:info.address,
                                })(<Input disabled/>)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="联系人" >
                                {getFieldDecorator('contactPerson', {
                                    initialValue:info.contactPerson,
                                })(<Input disabled/>)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="联系人电话" >
                                {getFieldDecorator('contactPhone', {
                                    initialValue:info.contactPhone,
                                })(<Input disabled/>)}
                            </FormItem>
                        </Col>
                    </Row>
                    <Row>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="开户银行" >
                                {getFieldDecorator('bankName', {
                                    initialValue:info.bankName,
                                })(<Input disabled/>)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="银行卡号" >
                                {getFieldDecorator('bankAccount', {
                                    initialValue:info.bankAccount,
                                })(<Input disabled/>)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="开户行地址" >
                                {getFieldDecorator('bankAddress', {
                                    initialValue:info.bankAddress,
                                })(<Input disabled/>)}
                            </FormItem>
                        </Col>
                    </Row>
                    <Row>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="结算方式" >
                                {getFieldDecorator('settleType', {
                                    initialValue:info.settleType,
                                })(
                                    <Select disabled>
                                        <Option value="0">现结</Option>
                                        <Option value="1">月结</Option>
                                    </Select>
                                )}
                            </FormItem>
                        </Col>
                    </Row>
                </Form>
                </div>
                <Row style={style.ManagerBottomRow}>
                    <Col span={10}>
                        <Button type="primary" style={style.SubmitBtn} onClick={()=>{window.location.hash=`Frame/SettlementEdit/${info.id}`}}>编辑</Button>
                    </Col>
                    <Col span={14}>
                        <Button type="default" style={style.CancelBtn} onClick={()=>{window.location.hash="Frame/SettlementList"}}>返回</Button>
                    </Col>
                </Row>
            </div>
        )
    }
}
const SettlementDetailInfoForm=Form.create()(SettlementDetailComponent);

export default SettlementDetailInfoForm;