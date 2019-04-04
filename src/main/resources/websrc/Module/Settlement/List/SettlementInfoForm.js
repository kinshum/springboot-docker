import React, {Component} from 'react';
import { observer } from "mobx-react";
import {Row,Col,Form,Input,Select,Button} from 'antd';
const FormItem = Form.Item;
const Option = Select.Option;
import * as cows from "../../Limits/Permission";

@observer
class SettlementComponent extends Component
{
    constructor(props){
        super(props);
        props.postForm(props.form);
    }
    /*setProductBrandsTime = (data,dateString) => {
        console.log(dateString,1)
        this.props.form.setFieldsValue({ProductBrands:dateString});
    };*/
    goTo=(url,arg)=>{
        this.props.handleAddTab(url,arg);
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
            <Row style={{padding:'10px 20px'}}>
                <Col span="4">
                {
                    (!cows.SettlementAddAction)?"":
                        <Button type="primary" className="btn" onClick={this.goTo.bind(this,'/Frame/SettlementAdd',"")}><i className="iconfont icon-add" />&nbsp;新增结算</Button>
                }
                </Col>
                <Col span="4" push="16" style={{textAlign:"right"}}>
                    <Button type="primary" className="btn" onClick={this.props.search.bind(this)}><i className="iconfont icon-search" />&nbsp;搜索</Button>
                </Col>
            </Row>
            <div style={{borderBottom:"1px solid #ccc"}}></div>
            <Form style={{margin:"10px 20px"}}>
                <Row>
                    <Col span="6">
                        <FormItem {...formItemLayout}  label="结算对象编码" >
                            {getFieldDecorator('settlementObjectId', {
                                initialValue:this.props.condition.settlementObjectId
                                //rules: [{ required: true, message: '请填写父级结算对象！',whitespace:true}],
                            })(<Input />)}
                        </FormItem>
                    </Col>
                    <Col span="6">
                        <FormItem {...formItemLayout}  label="结算对象名称" >
                            {getFieldDecorator('orgCname', {
                                initialValue:this.props.condition.orgCname
                                //rules: [{ required: true, message: '请填写结算对象名称！',whitespace:true}],
                            })(<Input />)}
                        </FormItem>
                    </Col>
                    {/*<Col span="6">
                        <FormItem {...formItemLayout}  label="创建日期" >
                            {getFieldDecorator('ProductBrands', {
                                //rules: [{ required: true, message: '请填写创建日期！',whitespace:true}],
                            })(<DatePicker onChange={this.setProductBrandsTime.bind(this)} />)}
                        </FormItem>
                    </Col>*/}
                    <Col span="6">
                        <FormItem {...formItemLayout}  label="结算方式" >
                            {getFieldDecorator('settleType', {
                                initialValue:this.props.condition.settleType
                                //rules: [{ required: true, message: '请填写结算方式！',whitespace:true}],
                            })(
                                <Select>
                                    <Option value="">请选择</Option>
                                    <Option value="0">现结</Option>
                                    <Option value="1">月结</Option>
                                </Select>
                            )}
                        </FormItem>
                    </Col>
                </Row>
            </Form>
        </div>
        )
    }
}
const SettlementSearchForm=Form.create()(SettlementComponent);

export default SettlementSearchForm;