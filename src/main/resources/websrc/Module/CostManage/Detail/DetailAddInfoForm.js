import React, {Component} from 'react';
import { observer } from "mobx-react";
import { Form , Input , Col , Row,Select } from 'antd';
const FormItem = Form.Item;
const Option = Select.Option;

@observer
class CostComponent extends Component {
    constructor(props) {
        super(props);
        props.getDetailAddInfoForm(props.form)
    }
    handleAccountOnlyOneCode = (rule,value,callback)=>{
        let preCode = this.props.form.getFieldValue('prefix');
        let code=preCode+value;
        if(!code){
            callback();
        }if(code.length>21){
            callback("编号过长");
        }else{
            this.props.AccountOnlyOneCode(code,callback);
        }
    };
    handleAccountOnlyOneName = (rule,value,callback)=>{
        if(!value){
            callback();
        }else{
            this.props.AccountOnlyOneName(value,callback);
        }
    };
    render() {
        let store=this.props.store;
        const {getFieldDecorator} = this.props.form;
        getFieldDecorator('pid',{initialValue:this.props.id});
        let preCode=store.categoryCode;
        const prefixSelector = getFieldDecorator('prefix', {
            initialValue: store.categoryCode
        })( <Select style={{ width: 160 }}>
            <Option value="86">{store.categoryCode}</Option>
        </Select>);

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
                sm: { span: 6 },
            },
            wrapperCol: {
                xs: { span: 24 },
                sm: { span: 18 },
            },
        };
        return (
            <div>
                <Row>
                    <Col span="12">
                        {/*<FormItem {...formItemLayout}  label="费用明细编号：" >*/}
                            {/*{getFieldDecorator('categoryCode', {*/}
                                {/*rules: [*/}
                                    {/*{ required: true, message: '请填写费用明细编号！'},*/}
                                    {/*{ validator: this.handleAccountOnlyOneCode.bind(this)}*/}
                                {/*],*/}
                            {/*})(<Input />)}*/}
                        {/*</FormItem>*/}
                        <FormItem {...formItemLayout}  label="费用明细编号：" >
                            {getFieldDecorator('categoryCode', {
                                rules: [
                                    { required: true, message: '请填写费用明细编号'},

                                    { validator: this.handleAccountOnlyOneCode.bind(this)}
                                ],
                            })(<Input addonBefore={prefixSelector}/>)}
                        </FormItem>
                    </Col>
                    <Col span="12">
                        <FormItem {...formItemLayout}  label="费用明细名称：" >
                            {getFieldDecorator('categoryName', {
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
                            })(<Input type="textarea" rows={7}/>)}
                        </FormItem>
                    </Col>
                </Row>
            </div>
        )
    }
}

const CostAddInfoForm=Form.create()(CostComponent);

export default CostAddInfoForm;