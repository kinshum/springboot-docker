import React, {Component} from 'react';
import { observer } from "mobx-react";
import AccountingBuildForm from "./AccountingBuildForm";
import AccountingInfo from "./AccountingInfo";
import Css from "../AccountingStyle";
import { notification, Breadcrumb , Button , Col , Row ,Modal,Table} from 'antd';


@observer
export default class AccountingBuildContainer extends Component {
    constructor(props) {
        super(props);
        this.state={
            visible:false,
            pagination:false
        }
        this.data={}

        const {condition,current}=this.props.store;
        this.props.store.BuildAccount({condition,current});
        this.props.store.accountObj();
    }
    showModal = () => {
        if(this.data.settlementObjectId){
            if(this.props.store.accountDataTable.length>0){
                this.setState({
                    visible: true,
                });
            }else{
                notification.open
                ({
                    message: '对账单生成失败！',
                    description: "没有要生成的对账单！"
                });
            }
        }else{
            notification.open
            ({
                message: '对账单生成失败！',
                description: "请选择结算对象并点击“搜索”按钮！"
            });
        }
    }
    getNoteForm(form){
        this.noteForm = form ;
    }
    handleOk = (e) => {
        let list=[];
        this.props.store.accountDataTable.map((account,index)=>{
            list.push(account);
        })
        this.noteForm.validateFields((err,data)=>{
            if(!err){
                this.noteFormDataRow = data;
            }
        })
        let dataRow={};
        dataRow.settlementObjectId = this.data.settlementObjectId;
        dataRow.settlementObjectName = this.data.settlementObjectName;
        dataRow.currency = list[0].settlementCurrency;
        dataRow.totalIncome = this.props.store.money.revenueAll;
        dataRow.totalOutcome = this.props.store.money.disbursementAll;
        dataRow.note = this.noteFormDataRow.note;
        dataRow.amount = dataRow.totalIncome - dataRow.totalOutcome;
        dataRow.inout = (dataRow.amount<0)?"0":"1";
        dataRow.settleType = 1;
        if(list.length>0){
            this.props.store.buildBill(dataRow,list);
            this.setState({
                visible: false,
            });
        }
    }
    handleCancel = (e) => {
        this.setState({
            visible: false,
        });
    }
    getBuildForm(form) {
        this.buildForm = form;
    }
    search(){
        this.buildForm.validateFields((err, data) =>
        {
            if(!err){
                this.data = data;
                this.data.refNo = (data.refNo)?(data.refNo).trim():undefined;
                let condition= this.data
                this.props.store.BuildAccount({condition});
            }
        })
    }
    render() {
        let {style} = Css;
        let store = this.props.store;
        console.log(store.condition)
        const columns = [
            {
                title: '明细编号',
                dataIndex: 'itemId',
                key: 'itemId',
            }, {
                title: '费用明细',
                dataIndex: 'categoryLevel2Name',
                key: 'categoryLevel2Name',

            },{
                title: '结算对象',
                dataIndex: 'settlementObjectName',
                key: 'settlementObjectName',


            },{
                title: '业务类型',
                dataIndex: 'businessType',
                key: 'businessType',
            }, {
                title: '业务编号',
                dataIndex: 'refNo',
                key: 'refNo',
            },{
                title: '交易金额',
                dataIndex: 'amount',
                key: 'amount',
                render: (text, record) => (
                    <span>{record.amount}</span>
                )
            },{
                title: '币种',
                dataIndex: 'currency',
                key: 'currency',
            },{
                title: '状态',
                dataIndex: 'status',
                key: 'status',
                render: (text, record) => (
                    <span>

                        {(record.status == "0") ? "失效/删除" :
                            (record.status == "1") ? "新增" :
                                (record.status == "2") ? "已修改" :
                                    (record.status == "3") ? "已审核" :
                                        (record.status == "4") ? "已生成账单" :
                                            (record.status == "5") ? "已开票" :
                                                (record.status == "6") ? "已结款" : null
                        }
                    </span>
                )
            },{
                title: '交易时间',
                dataIndex: 'tradeTime',
                key: 'tradeTime',
            }
        ];
        return (
            <div>
                <Breadcrumb separator=">" className="breadcrumb">
                    <Breadcrumb.Item href="#/Frame/myHome">首页</Breadcrumb.Item>
                    <Breadcrumb.Item href="#/Frame/accountingList">记账管理</Breadcrumb.Item>
                    <Breadcrumb.Item>预制账单</Breadcrumb.Item>
                </Breadcrumb>
                <div style={{margin:'0px 10px'}}>
                <div style={style.FormStyle}>
                    <AccountingBuildForm
                        status={this.accountStatus}
                        search={this.search.bind(this)}
                        postForm={this.getBuildForm.bind(this)}
                        data={store.accountObjdataTable}
                        condition={store.condition}
                    />
                </div>
                <div style={{background:"#ececec",height:"10px"}}></div>
                <div style={style.FormStyle}>
                    <Table columns={columns} rowKey={record => record.id} dataSource={[...store.accountDataTable]} pagination={this.state.pagination} size="middle"/>

                </div>

                <Row style={{height:100}}/>
                </div>
                <Row style={style.ManagerBottomRow}>
                    <Col span={10}>
                        <Button type="primary" style={style.SubmitBtn} onClick={this.showModal}>生成对账单</Button>
                        <Modal
                            title="请核对账单信息"
                            visible={this.state.visible}
                            onOk={this.handleOk}
                            onCancel={this.handleCancel}
                        >
                            <AccountingInfo
                                inout={store.inout}
                                // totalIncome={store.totalIncome}
                                // totalOutcome={store.totalOutcome}
                                money={store.money}
                                settlementObj={this.data.settlementObjectName}
                                // settlementObjId={this.data.settlementObjectId}
                                accountDataTable={store.accountDataTable}
                                postForm={this.getNoteForm.bind(this)}
                            />
                        </Modal>
                    </Col>
                    <Col span={14}>
                        <Button type="default" style={style.CancelBtn} onClick={()=>{window.location.hash="Frame/accountingList"}}>返回</Button>
                    </Col>
                </Row>
            </div>
        )
    }
}
