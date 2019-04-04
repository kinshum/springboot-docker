import React, {Component} from 'react';
import { observer } from "mobx-react";
import { Form , Input , Col , Row } from 'antd';
const FormItem = Form.Item;

@observer
class CostComponent extends Component {
    constructor(props) {
        super(props);
        props.getDetailEditInfoForm(props.form);
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
        const {getFieldDecorator} = this.props.form;
        let info = this.props.store;
        getFieldDecorator('pid',{initialValue:this.props.id});
        let formItemLayout = {
            labelCol: {
                xs: { span: 24 },
                sm: { span: 10 },
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
                sm: { span: 18 },
            },
        };
        return (
            <div>
                <Row>
                    <Col span="8">
                        <FormItem {...formItemLayout}  label="费用明细编号：" >
                            {getFieldDecorator('categoryCode', {
                                initialValue:info.categoryCode,
                                rules: [
                                    { required: true, message: '请填写费用明细编号！'},
                                    { validator: this.handleAccountOnlyOneCode.bind(this)}
                                ],
                            })(<Input />)}
                        </FormItem>
                    </Col>
                    <Col span="8">
                        <FormItem {...formItemLayout}  label="费用明细名称：" >
                            {getFieldDecorator('categoryName', {
                                initialValue:info.categoryName,
                                rules: [
                                    { required: true, message: '请填写费用明细名称！'},
                                    { max:20,message: '费用类别名称过长！'},
                                    { validator: this.handleAccountOnlyOneName.bind(this)}
                                ],
                            })(<Input />)}
                        </FormItem>
                    </Col>
                </Row>
                <Row>
                    <Col span="20">
                        <FormItem {...formItemLayout1}  label="备注信息" >
                            {getFieldDecorator('note', {
                                rules: [{ message: '备注信息不能超过200字！',max:200 }],
                                initialValue:info.note,
                            })(<Input type="textarea" rows={7}/>)}
                        </FormItem>
                    </Col>
                </Row>
            </div>
        )
    }
}

const CostEditInfoForm=Form.create()(CostComponent);

export default CostEditInfoForm;