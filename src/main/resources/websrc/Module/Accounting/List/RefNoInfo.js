import React, {Component} from 'react';
import { observer } from "mobx-react";
import Css from "../AccountingStyle";
import { Col , Row ,Modal} from 'antd';

@observer
export default class RefNoInfo extends Component {
    constructor(props) {
        super(props);
    }
    render(){
        let {style} = Css;
        return(
            <div>
                <div>
                    <Row>
                        <Col span="8">总收入：{this.props.money.revenueAll}</Col>
                        <Col span="8">总支出：{this.props.money.disbursementAll}</Col>
                        <Col span="8">总计：{(this.props.money.revenueAll)+(this.props.money.disbursementAll)}</Col>
                    </Row>
                </div>
                {/*<p style={{textAlign:"center",fontSize:"16px", lineHeight:"36px", color:"rgb(80,172,226)",}}>{this.props.refNo}</p>*/}
                <h2 style={{lineHeight:"40px"}}>收入明细</h2>
                <div>
                    <Row style={style.ListTableTopRow}>
                        <Col span="4">明细编号</Col>
                        <Col span="4">费用明细</Col>
                        <Col span="3">结算对象</Col>
                        <Col span="2">业务类型</Col>
                        <Col span="3">交易金额</Col>
                        <Col span="2">币种</Col>
                        <Col span="3">状态</Col>
                        <Col span="3">交易时间</Col>
                    </Row>
                    {
                        this.props.modalDataTable.map((item,index)=>{
                            return(
                            (item.inout==1)?
                                <Row className="TranStyle2" type="flex" justify="space-around" align="middle" key={item.id}>
                                    <Col span="4">{item.itemId}</Col>
                                    <Col span="4">{item.categoryLevel2Name}</Col>
                                    <Col span="3">{item.settlementObjectName}</Col>
                                    <Col span="2">{item.businessType}</Col>
                                    <Col span="3">{item.amount.toFixed(2)}</Col>
                                    <Col span="2">{item.currency}</Col>
                                    <Col span="3">
                                        {
                                            (item.status=="0")?"失效/删除":
                                                (item.status=="1")?"新增":
                                                    (item.status=="2")?"已修改":
                                                        (item.status=="3")?"已审核":
                                                            (item.status=="4")?"已生成账单":
                                                                (item.status=="5")?"已开票":
                                                                    (item.status=="6")?"已结款":null
                                        }
                                    </Col>
                                    <Col span="3">{item.tradeTime}</Col>
                                </Row>:""
                            )
                        })
                    }
                </div>
                <h2 style={{lineHeight:"40px",paddingTop:10}}>支出明细</h2>
                <div>
                    <Row style={style.ListTableTopRow}>
                        <Col span="4">明细编号</Col>
                        <Col span="4">费用明细</Col>
                        <Col span="3">结算对象</Col>
                        <Col span="2">业务类型</Col>
                        <Col span="3">交易金额</Col>
                        <Col span="2">币种</Col>
                        <Col span="3">状态</Col>
                        <Col span="3">交易时间</Col>
                    </Row>
                    {
                        this.props.modalDataTable.map((item,index)=>{
                            return(
                                (item.inout==0)?
                                    <Row className="TranStyle2" type="flex" justify="space-around" align="middle" key={item.id}>
                                        <Col span="4">{item.itemId}</Col>
                                        <Col span="4">{item.categoryLevel2Name}</Col>
                                        <Col span="3">{item.settlementObjectName}</Col>
                                        <Col span="2">{item.businessType}</Col>
                                        <Col span="3">{item.amount.toFixed(2)}</Col>
                                        <Col span="2">{item.currency}</Col>
                                        <Col span="3">
                                            {
                                                (item.status=="0")?"失效/删除":
                                                    (item.status=="1")?"新增":
                                                        (item.status=="2")?"已修改":
                                                            (item.status=="3")?"已审核":
                                                                (item.status=="4")?"已生成账单":
                                                                    (item.status=="5")?"已开票":
                                                                        (item.status=="6")?"已结款":null
                                            }
                                        </Col>
                                        <Col span="3">{item.tradeTime}</Col>
                                    </Row>:""
                            )
                        })
                    }
                </div>

            </div>
        )
    }
}