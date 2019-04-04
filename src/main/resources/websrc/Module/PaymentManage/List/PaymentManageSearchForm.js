import React, {Component} from 'react';
import { observer } from "mobx-react";
import {Row,Col,Form,Input,Select,DatePicker} from 'antd';
const FormItem = Form.Item;
const Option = Select.Option;


@observer
class ProductComponent extends Component {
    constructor(props) {
        super(props);
        props.postForm(props.form);
    }

    handleSetCreateTime(date, dateString) {
        this.props.form.setFieldsValue({createTime: dateString});
    }

    handleSetEndTime(date, dateString) {
        this.props.form.setFieldsValue({createTimeEnd: dateString});
    }

    render() {

        const {getFieldDecorator} = this.props.form;
        let accountObj = this.props.accountObj;
        let formItemLayout = {
            labelCol: {
                xs: {span: 24},
                sm: {span: 8},
            },
            wrapperCol: {
                xs: {span: 24},
                sm: {span: 16},
            },
        };

        return (
            <div>
                <Form style={{margin: "10px 20px"}}>
                    <Row>
                        <Col span="6">
                            <FormItem {...formItemLayout} label="对账单编号">
                                {getFieldDecorator('billNo', {})(<Input/>)}
                            </FormItem>
                        </Col>

                        <Col span="6">
                            <FormItem {...formItemLayout} label="结算对象">
                                {getFieldDecorator('settlementObjectId', {})(
                                    <Select>
                                        <Option value="">请选择...</Option>
                                    {
                                        accountObj ? accountObj.map((row, index) => {
                                            return (
                                                <Option value={row.id.toString()}  key={index}>{row.orgCname}</Option>
                                            )
                                        }) : ""
                                    }
                                </Select>)}
                            </FormItem>
                        </Col>
                        {/*<Col span="6">*/}
                            {/*<FormItem {...formItemLayout} label="收/支">*/}
                                {/*{getFieldDecorator('inout', {})(*/}
                                    {/*<Select>*/}
                                        {/*<Option value="">请选择...</Option>*/}
                                        {/*<Option value="1">收入</Option>*/}
                                        {/*<Option value="0">支出</Option>*/}
                                    {/*</Select>*/}
                                {/*)}*/}
                            {/*</FormItem>*/}
                        {/*</Col>*/}
                        <Col span="6">
                            <FormItem {...formItemLayout} label="状态">
                                {getFieldDecorator('status', {})(
                                    <Select>
                                        <Option value="">请选择</Option>
                                        <Option value="2">已确认</Option>
                                        <Option value="3">已开票</Option>
                                        <Option value="4">已结款</Option>
                                    </Select>
                                )}
                            </FormItem>
                        </Col>
                        <Col span="6">
                            <FormItem {...formItemLayout} label="开始日期">
                                {
                                    getFieldDecorator('createTime', {})(
                                        <DatePicker onChange={this.handleSetCreateTime.bind(this)} className="fullWidth"/>
                                    )
                                }
                            </FormItem>
                        </Col>
                    </Row>
                    <Row>

                        <Col span="6">
                            <FormItem {...formItemLayout} label="截止日期">
                                {getFieldDecorator('endTime', {})(
                                    <DatePicker onChange={this.handleSetEndTime.bind(this)} className="fullWidth"/>
                                )
                                }
                            </FormItem>
                        </Col>

                    </Row>
                </Form>
            </div>
        )
    }
}

const PaymentManageSearchForm = Form.create()(ProductComponent);

export default PaymentManageSearchForm;