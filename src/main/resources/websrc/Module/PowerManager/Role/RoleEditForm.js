import React, {Component} from 'react';
import { observer } from "mobx-react";
import { Form,Button,Input} from 'antd';
const FormItem =Form.Item;

@observer
class RoleEditComponent extends Component {
    constructor(props) {
        super(props);
        props.getRoleEditForm(props.form);
    }
    render(){
        let {getFieldDecorator} = this.props.form;
        getFieldDecorator('id', {initialValue:this.props.roleDataRow.id});
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
                        initialValue:this.props.roleDataRow.name,
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
const RoleEditForm=Form.create()(RoleEditComponent);

export default RoleEditForm;
