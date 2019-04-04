import React, {Component} from 'react';
import {Form,Input} from 'antd';
const FormItem = Form.Item;

class FrameModifyComponent extends Component {
    constructor(props) {
        super(props);
        props.passwordForm(props.form);
        this.state = {
            confirmDirty: false,
        };
    }
    checkPassword = (rule, value, callback) => {
        const form = this.props.form;
        if (value && value !== form.getFieldValue('newpwd')) {
            callback('两个密码输入不一致！');
        } else {
            callback();
        }
    };
    checkConfirm = (rule, value, callback) => {
        const form = this.props.form;
        if (value && this.state.confirmDirty) {
            form.validateFields(['confirm'], { force: true });
        }
        callback();
    };
    handleConfirmBlur = (e) => {
        const value = e.target.value;
        this.setState({ confirmDirty: this.state.confirmDirty || !!value });
    };
    render(){
        const formItemLayout = {
            labelCol: {
                xs: { span: 24 },
                sm: { span:11 },
            },
            wrapperCol: {
                xs: { span: 24 },
                sm: { span: 9 },
            },
        };
        const { getFieldDecorator } = this.props.form;
        return(
            <Form>
                <FormItem {...formItemLayout} label="旧密码">
                    {getFieldDecorator('oldpwd', {
                        rules: [{required:true ,message: '旧密码是必填' }],
                    })(
                        <Input type="password"/>
                    )}
                </FormItem>
                <FormItem {...formItemLayout} label="新密码">
                    {getFieldDecorator('newpwd', {
                        rules: [{
                            required: true, message: '新密码是必填',
                        }, {
                            validator: this.checkConfirm,
                        }],
                    })(
                        <Input type="password"/>
                    )}
                </FormItem>
                <FormItem {...formItemLayout} label="确认密码">
                    {getFieldDecorator('confirm', {
                        rules: [{
                            required: true, message: '确认密码是必填',
                        }, {
                            validator: this.checkPassword,
                        }],
                    })(
                        <Input type="password" onBlur={this.handleConfirmBlur.bind(this)}/>
                    )}
                </FormItem>
            </Form>
        )
    }
}
const FrameModifyForm = Form.create()(FrameModifyComponent);

export default FrameModifyForm;
