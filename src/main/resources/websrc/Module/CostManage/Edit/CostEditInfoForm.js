import React, {Component} from 'react';
import { observer } from "mobx-react";
import Css from "../CostStyle";
import { Form , Input , Icon , Col , Row } from 'antd';
const FormItem = Form.Item;

@observer
class CostComponent extends Component {
    constructor(props) {
        super(props);
        props.InfoForm(props.form);
    }
    handleAccountOnlyOneCode = (rule,value,callback)=>{
        let common = this.props.store.categoryCode;
        if(!value || value==common){
            callback();
        }else{
            this.props.AccountOnlyOneCode(value,callback);
        }
    };
    handleAccountOnlyOneName = (rule,value,callback)=>{
        let common = this.props.store.categoryName;
        if(!value || value==common){
            callback();
        }else{
            this.props.AccountOnlyOneName(value,callback);
        }
    };
    render() {
        let {style} = Css;
        let info = this.props.store;
        const {getFieldDecorator} = this.props.form;
        getFieldDecorator('id', {initialValue:info.id});
        let formItemLayout = {
            labelCol: {
                xs: { span: 24 },
                sm: { span: 7 },
            },
            wrapperCol: {
                xs: { span: 24 },
                sm: { span: 14 },
            },
        };
        let formItemLayout1 = {
            labelCol: {
                xs: { span: 24 },
                sm: { span: 4 },
            },
            wrapperCol: {
                xs: { span: 24 },
                sm: { span: 20 },
            },
        };
        return (
            <div>
                <Form style={style.FormStyle}>
                    <div style={{height:20,borderBottom:"1px solid #ccc"}}></div>
                    <p style={style.hFormStyle}>&nbsp;&nbsp;<Icon type="book" /> 编辑费用&nbsp;&nbsp;</p>
                    <Row style={{marginTop:30}}>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="费用类别编号：" >
                                {getFieldDecorator('categoryCode', {
                                    initialValue:info.categoryCode,
                                    rules: [
                                        { required: true, message: '请填写费用类别编号！'},
                                        { max:20,message: '费用类别编号过长！'},
                                        { validator: this.handleAccountOnlyOneCode.bind(this)}
                                    ],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                        <Col span="8">
                            <FormItem {...formItemLayout}  label="费用类别名称：" >
                                {getFieldDecorator('categoryName', {
                                    initialValue:info.categoryName,
                                    rules: [
                                        { required: true, message: '请填写费用类别名称！'},
                                        { max:20,message: '费用类别名称过长！'},
                                        { validator: this.handleAccountOnlyOneName.bind(this)}
                                    ],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                    </Row>
                    <Row>
                        <Col span="14">
                            <FormItem {...formItemLayout1}  label="备注信息" >
                                {getFieldDecorator('note', {
                                    rules: [{ message: '备注信息不能超过200字！',max:200 }],
                                    initialValue:info.note,
                                })(<Input type="textarea" rows={7}/>)}
                            </FormItem>
                        </Col>
                    </Row>
                </Form>
            </div>
        )
    }
}

const CostEditInfoForm=Form.create()(CostComponent);

export default CostEditInfoForm;