import React, {Component} from 'react';
import { observer } from "mobx-react";
import {Row,Col,Form,Input} from 'antd';
const FormItem = Form.Item;

@observer
class BusinessTypeSearchComponent extends Component
{
    constructor(props){
        super(props);
        props.postForm(props.form);
    }
    render(){
        const {getFieldDecorator}=this.props.form;
        let formItemLayout = {
            labelCol: {
                xs: { span: 24 },
                sm: { span: 8 },
            },
            wrapperCol: {
                xs: { span: 24 },
                sm: { span: 16 },
            },
        };
        return(
            <div style={{backgroundColor:"rgb(250, 250, 247)"}}>
                <Form style={{margin:"10px 20px"}}>
                    <Row>
                        <Col span="6">
                            <FormItem {...formItemLayout}  label="业务类型名称" >
                                {getFieldDecorator('businessTypeName', {initialValue:this.props.condition.businessTypeName

                                    //rules: [{ required: true, message: '请填写结算方式！',whitespace:true}],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                    </Row>
                </Form>
            </div>
        )
    }
}
const BusinessTypeSearchInfoForm=Form.create()(BusinessTypeSearchComponent);

export default BusinessTypeSearchInfoForm;