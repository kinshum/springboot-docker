import React, {Component} from 'react';
import { observer } from "mobx-react";
import Css from "../AccountingStyle";
import { Row , Col,Form,Input } from "antd";
const FormItem = Form.Item;

@observer
class ProductComponent extends Component {
    constructor(props) {
        super(props);
        this.props.postForm(props.form);
    }
    render(){
        let {style} = Css;
        const {getFieldDecorator} = this.props.form;
        let formItemLayout = {
            labelCol: {
                xs: { span: 24 },
                sm: { span: 2 },
            },
            wrapperCol: {
                xs: { span: 24 },
                sm: { span: 21 },
            },
        };
        return(
            <div>
                <div style={{paddingLeft:10}}>结算对象：{this.props.settlementObj}</div>
                <div style={{paddingLeft:10}}>结算币种：{this.props.accountDataTable[0].settlementCurrency}</div>
                <div style={{paddingLeft:10}}>收支类型：
                    {
                        (this.props.money.revenueAll<this.props.money.disbursementAll)?"支出":"收入"
                    }
                </div>
                <div style={style.ModalTable}>
                    <Row style={style.ListTableTopRow}>
                        <Col span="4">业务类型</Col>
                        <Col span="5">收入</Col>
                        <Col span="5">支出</Col>
                        <Col span="5">数量</Col>
                        <Col span="5">金额</Col>
                    </Row>
                    {
                        this.props.inout.map((item,index) => {
                            return(
                                <Row key={index} className="TranStyle2" type="flex" justify="space-around" align="middle">
                                    <Col span="4">{item.businessType}</Col>
                                    <Col span="5">{item.revenue.toFixed(2)}</Col>
                                    <Col span="5">{item.disbursement.toFixed(2)}</Col>
                                    <Col span="5">{item.num}</Col>
                                    <Col span="5">{(item.revenue - item.disbursement).toFixed(2)}</Col>
                                </Row>
                            )
                        })
                    }
                    <Row className="TranStyle2" type="flex" justify="space-around" align="middle">
                        <Col span="4">总计</Col>
                        <Col span="5">{this.props.money.revenueAll.toFixed(2)}</Col>
                        <Col span="5">{this.props.money.disbursementAll.toFixed(2)}</Col>
                        <Col span="5">{this.props.money.numAll}</Col>
                        <Col span="5">{(this.props.money.revenueAll-this.props.money.disbursementAll).toFixed(2)}</Col>
                    </Row>
                </div>
                <Form>
                    <FormItem {...formItemLayout}  label="备注" >
                        {getFieldDecorator('note', {
                            rules: [{ message: '备注信息不能超过500字！',max:500 }],
                        })(<Input type="textarea" rows={3} />)}
                    </FormItem>
                </Form>
            </div>
        )
    }
}

const AccountingInfo=Form.create()(ProductComponent);

export default AccountingInfo;