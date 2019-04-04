import React, {Component} from 'react';
import { observer } from "mobx-react";
import Css from "../UserStyle";
import { Form , Input , Icon  , Col , Row } from 'antd';
const FormItem = Form.Item;

@observer
class UserComponent extends Component {
    constructor() {
        super();
    }

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
                sm: { span: 14 },
            },
        };
        let formItemLayout1 = {
            labelCol: {
                xs: { span: 24 },
                sm: { span: 4 },
            },
            wrapperCol: {
                xs: { span: 24 },
                sm: { span: 20 },
            },
        };
        return (
            <div>
                <Form style={style.FormStyle}>
                    <div style={{height:20,borderBottom:"1px solid #ccc"}}></div>
                    <p style={style.hFormStyle}>&nbsp;&nbsp;<Icon type="book" /> 新增结算对象&nbsp;&nbsp;</p>
                    <Row style={{marginTop:30}}>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="当前账套" >
                                {getFieldDecorator('orgId', {
                                    //initialValue:
                                })(<Input disabled/>)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="父级结算对象" >
                                {getFieldDecorator('name', {
                                    //initialValue:
                                })(<Input />)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="结算对象名称" >
                                {getFieldDecorator('orgBriefName', {
                                    //initialValue:
                                    rules: [{ required: true, message: '请填写结算对象名称！'}],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                    </Row>
                    <Row>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="公司名称" >
                                {getFieldDecorator('orgBriefName', {
                                    //initialValue:
                                })(<Input />)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="公司地址" >
                                {getFieldDecorator('orgBriefName', {
                                    //initialValue:
                                })(<Input />)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="联系人" >
                                {getFieldDecorator('orgBriefName', {
                                    //initialValue:
                                    rules: [{ required: true, message: '请填写联系人！'}],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                    </Row>
                    <Row>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="联系电话" >
                                {getFieldDecorator('orgBriefName', {
                                    //initialValue:
                                    rules: [{ required: true, message: '请填写联系电话！'}],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="开户人姓名" >
                                {getFieldDecorator('orgBriefName', {
                                    //initialValue:
                                    rules: [{ required: true, message: '请填写开户人姓名！'}],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="开户银行" >
                                {getFieldDecorator('orgBriefName', {
                                    //initialValue:
                                    rules: [{ required: true, message: '请填写开户银行！'}],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                    </Row>
                    <Row>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="银行卡号" >
                                {getFieldDecorator('orgBriefName', {
                                    //initialValue:
                                    rules: [{ required: true, message: '请填写银行卡号！'}],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="开户地址" >
                                {getFieldDecorator('orgBriefName', {
                                    //initialValue:
                                    rules: [{ required: true, message: '请填写开户地址！'}],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="结算方式" >
                                {getFieldDecorator('orgBriefName', {
                                    //initialValue:
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
                        <Col span="14">
                            <FormItem {...formItemLayout1}  label="备注信息" >
                                {getFieldDecorator('orgBriefName', {
                                    //initialValue:
                                })(<Input type="textarea" rows={7}/>)}
                            </FormItem>
                        </Col>
                    </Row>
                </Form>
            </div>
        )
    }
}

const UserEditInfoForm=Form.create()(UserComponent);

export default UserEditInfoForm;