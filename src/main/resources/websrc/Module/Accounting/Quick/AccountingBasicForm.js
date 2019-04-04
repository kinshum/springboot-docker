import React, {Component} from 'react';
import { observer } from "mobx-react";
import Css from "../AccountingStyle";
import { Form , Input ,Icon, Col , Row ,Select} from 'antd';
const FormItem = Form.Item;
const Option = Select.Option;

@observer
class ProductComponent extends Component {
    constructor(props) {
        super(props);
        props.postForm(props.form);
    }
    render(){
        let {style} = Css;
        const {getFieldDecorator} = this.props.form;
        let formItemLayout = {
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
            <div>
                <Form style={style.FormStyle}>
                    <div style={{height:20,borderBottom:"1px solid #ccc"}}></div>
                    <p style={style.hFormStyle}>&nbsp;&nbsp;<Icon type="book" /> 新增业务费用&nbsp;&nbsp;</p>
                    <Row style={{marginTop:30}}>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="业务编码" >
                                {getFieldDecorator('refNo', {
                                    rules: [{ required: true, message: '请填写业务编码！'},
                                        { max:20, message: '业务编码过长！'}],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="业务类型" >
                                {getFieldDecorator('businessType', {
                                    rules: [{ required: true, message: '请填写业务类型！'}],
                                })(<Select>
                                    {
                                        this.props.businessTypeDataTable.map((item,index)=>{
                                            return(
                                                <Option value={item.businessTypeName} key={item.id}>{item.businessTypeName}</Option>
                                            )
                                        })
                                    }
                                </Select>)}
                            </FormItem>
                        </Col>
                        <Col span={4} offset={4} >
                            <FormItem {...formItemLayout} label="总计" >
                                {getFieldDecorator(`total`, {
                                    initialValue:0,
                                })(<Input disabled={true}/>)}
                            </FormItem>
                        </Col>
                    </Row>
                </Form>
            </div>
        )
    }
}

const AccountingBasicForm=Form.create()(ProductComponent);

export default AccountingBasicForm;