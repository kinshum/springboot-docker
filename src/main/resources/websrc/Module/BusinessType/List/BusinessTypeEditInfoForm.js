import React, {Component} from 'react';
import { observer } from "mobx-react";
import { Form , Input , Col , Row} from 'antd';
const FormItem = Form.Item;

@observer
class BusinessTypeComponent extends Component {
    constructor(props) {
        super(props);
        props.businessEditInfoForm(props.form)
    }
    handleBusinessOnlyOne = (rule, value, callback)=>{
        let common = this.props.store.businessTypeName;
        if(!value || value==common){
            callback();
        }else{
            this.props.BusinessOnlyOne(value,callback);
        }
    };
    render() {
        const {getFieldDecorator} = this.props.form;
        let formItemLayout = {
            labelCol: {
                xs: { span: 24 },
                sm: { span: 8 },
            },
            wrapperCol: {
                xs: { span: 24 },
                sm: { span: 12 },
            },
        };
        return (
            <div>
                <Row>
                    <Col span="24">
                        <FormItem {...formItemLayout}  label="业务类型：" >
                            {getFieldDecorator('businessTypeName', {
                                initialValue:this.props.store.businessTypeName,
                                rules: [
                                    { required: true, message: '请填写业务类型名称！',whitespace:true},
                                    { max:20,message: '业务类型名称过长！'},
                                    { validator: this.handleBusinessOnlyOne.bind(this)}
                                ],
                            })(<Input />)}
                        </FormItem>
                    </Col>
                </Row>
            </div>
        )
    }
}

const BusinessTypeEditInfoForm=Form.create()(BusinessTypeComponent);

export default BusinessTypeEditInfoForm;