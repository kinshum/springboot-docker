import React, {Component} from 'react';
import { observer } from "mobx-react";
import { Form, Input, Select, Row, Col, Button } from 'antd';
const FormItem = Form.Item;
const Option = Select.Option;

class RegistrationForm extends Component {
    constructor(props){
        super(props);
        props.postForm(props.form);
    }
    handleSelect(value,option){
        this.props.form.setFieldsValue({'roleId':option.props.eventKey})
    }
    render(){
        let {getFieldDecorator} = this.props.form;
        if(this.props.roleDataRow){
            getFieldDecorator('roleId',{initialValue:this.props.roleDataRow.id})
        }
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
                <FormItem {...formItemLayout} label="用户组：" >
                    {getFieldDecorator('role', {
                        rules: [{ required: true, message: '请填写业务类型名称！'}],
                        initialValue:this.props.roleDataRow.name
                    })(<Select onSelect={this.handleSelect.bind(this)}>
                        {this.props.roleDataTable.map((role,index)=>{
                            return(
                                <Option value={role.id.toString()} key={role.id}>{role.name}</Option>
                            )
                        })}
                    </Select>)}
                </FormItem>
            </Form>
        )
    }
}

const UserListRoleForm = Form.create()(RegistrationForm);
export default UserListRoleForm;
