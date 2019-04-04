import React, {Component} from 'react';
import { observer } from "mobx-react";
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
            <div style={{margin:"20px"}}>
                <Form>
                    <FormItem {...formItemLayout}  label="审核状态">
                        {getFieldDecorator('checkStatus', {
                            rules: [{ required: true, message: '请选择审核状态！'}],
                        })(
                            <RadioGroup>
                                <Radio value={1}>是</Radio>
                                <Radio value={2}>否</Radio>
                            </RadioGroup>)}
                    </FormItem>
                </Form>
            </div>
        )
    }
}

const CheckForm=Form.create()(ProductComponent);

export default CheckForm;