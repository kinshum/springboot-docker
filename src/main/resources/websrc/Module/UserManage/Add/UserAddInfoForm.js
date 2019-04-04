import React, {Component} from 'react';
import { observer } from "mobx-react";
import Css from "../UserStyle";
import { Form , Input , Icon , Col , Row } from 'antd';
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
                sm: { span: 2 },
            },
            wrapperCol: {
                xs: { span: 24 },
                sm: { span: 14 },
            },
        };
        return (
            <div>
                <Form style={style.FormStyle}>
                    <div style={{height:20,borderBottom:"1px solid #ccc"}}></div>
                    <p style={style.hFormStyle}>&nbsp;&nbsp;<Icon type="book" /> 新增用户&nbsp;&nbsp;</p>
                    <Row style={{marginTop:30}}>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="所属部门：" >
                                {getFieldDecorator('orgBriefName', {
                                    rules: [{ required: true, message: '请填写结算对象名称！'}],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="用户名：" >
                                {getFieldDecorator('orgBriefName', {
                                })(<Input />)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="真实姓名：" >
                                {getFieldDecorator('orgBriefName', {
                                })(<Input />)}
                            </FormItem>
                        </Col>
                    </Row>
                    <Row>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="职位：" >
                                {getFieldDecorator('orgBriefName', {
                                    rules: [{ required: true, message: '请填写联系人！'}],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="邮箱：" >
                                {getFieldDecorator('orgBriefName', {
                                    rules: [{ required: true, message: '请填写联系电话！'}],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="密码：" >
                                {getFieldDecorator('orgBriefName', {
                                    rules: [{ required: true, message: '请填写开户人姓名！'}],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                    </Row>
                    <Row>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="确认密码：" >
                                {getFieldDecorator('orgBriefName', {
                                    rules: [{ required: true, message: '请填写开户银行！'}],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                    </Row>
                </Form>
            </div>
        )
    }
}

const UserAddInfoForm=Form.create()(UserComponent);

export default UserAddInfoForm;