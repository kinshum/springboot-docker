import React, {Component} from 'react';
import { observer } from "mobx-react";
import { Form,Button,Input} from 'antd';
const FormItem =Form.Item;

@observer
class RoleAddComponent extends Component {
    constructor(props) {
        super(props);
        props.getRoleAddForm(props.form);
    }
    render(){
        let {getFieldDecorator} = this.props.form;
        const formItemLayout = {
            labelCol: {
                xs: { span: 24 },
                sm: { span: 6 },
            },
            wrapperCol: {
                xs: { span: 24 },
                sm: { span: 14 },
            },
        };
        return(
            <Form>
                <FormItem {...formItemLayout} label="角色名称：" >
                    {getFieldDecorator('name', {
                        rules: [
                            { required: true, message: '请填写角色名称！',whitespace:true},
                            { max:30,message: '角色名称过长！'},
                        ],
                    })(<Input />)}
                </FormItem>
            </Form>
        )

    }
}
const RoleAddForm=Form.create()(RoleAddComponent);

export default RoleAddForm;