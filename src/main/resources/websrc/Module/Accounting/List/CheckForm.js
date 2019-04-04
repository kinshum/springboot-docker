import React, {Component} from 'react';
import { observer } from "mobx-react";
import Css from "../AccountingStyle";
import { Form , Col ,Radio } from 'antd';
const FormItem = Form.Item;
const RadioGroup = Radio.Group;

@observer
class ProductComponent extends Component {
    constructor(props) {
        super(props);
        props.postForm(props.form);
    }

    render() {
        let {style} = Css;
        const {getFieldDecorator} = this.props.form;
        let formItemLayout = {
            labelCol: {
                xs: {span: 24},
                sm: {span: 8},
            },
            wrapperCol: {
                xs: {span: 24},
                sm: {span: 14},
            },
        };
        return (
            <div>
                <FormItem {...formItemLayout}  label="审核状态" >
                    {getFieldDecorator('status', {
                        rules: [{ required: true, message: '请选择审核状态！'}],
                    })(<RadioGroup>
                        <Radio value={0}>同意</Radio>
                        <Radio value={1}>拒绝</Radio>
                    </RadioGroup>)}
                </FormItem>
            </div>
        )
    }
}

const CheckForm=Form.create()(ProductComponent);

export default CheckForm;