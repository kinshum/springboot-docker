import React, {Component} from 'react';
import { observer } from "mobx-react";
import {Row,Col,Form,Input} from 'antd';
const FormItem = Form.Item;

@observer
class UserComponent extends Component
{
    constructor(props){
        super(props);

    }
    render(){

        const {getFieldDecorator}=this.props.form;
        let formItemLayout = {
            labelCol: {
                xs: { span: 24 },
                sm: { span: 6 },
            },
            wrapperCol: {
                xs: { span: 24 },
                sm: { span: 18 },
            },
        };
        return(
            <div>
                <Form style={{margin:"10px 20px"}}>
                    <Row>
                        <Col span="6">
                            <FormItem {...formItemLayout}  label="用户名：" >
                                {getFieldDecorator('ProductBrands', {
                                    //rules: [{ required: true, message: '请填写父级结算对象！',whitespace:true}],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                        <Col span="6">
                            <FormItem {...formItemLayout}  label="职位：" >
                                {getFieldDecorator('ProductBrands', {
                                    //rules: [{ required: true, message: '请填写结算对象名称！',whitespace:true}],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                    </Row>
                </Form>
            </div>
        )
    }
}
const UserSearchForm=Form.create()(UserComponent);

export default UserSearchForm;