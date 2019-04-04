import React, {Component} from 'react';
import { observer } from "mobx-react";
import {Row,Col,Pagination,Breadcrumb,Form,Tooltip,Table } from 'antd';
import Css from "../SettlementStyle";
import SettlementInfoForm from "./SettlementInfoForm"
const settleType = {0:'现结',1:'月结'};
let i=0;
import * as cows from "../../Limits/Permission";

@observer
export default class SettlementListContainer extends Component
{
    constructor(props){
        super(props);

        const {condition,pageSize,current} = this.props.store;
        props.store.SettlementQuery({condition,pageSize,current});
        props.store.SettlementTotalCount({condition});
        this.state={
            pagination: false,
        }
    }
    changePage(page){
        let current=page
        const {condition,pageSize}=this.props.store;
        this.props.store.SettlementQuery({condition,current,pageSize});
    }
    getListForm(form){
        this.listForm = form;
    }
    search(){
        this.listForm.validateFields((err,data)=>{
            if(!err){
                this.data = data;
                this.data.settlementObjectId = (data.settlementObjectId)?(data.settlementObjectId).trim():undefined;
                this.data.orgCname = (data.orgCname)?(data.orgCname).trim():undefined;
                let condition=this.data;
                const {pageSize,current} = this.props.store;
                this.props.store.SettlementQuery({condition,current,pageSize});
                this.props.store.SettlementTotalCount({condition});
            }
        })
    }
    goTo=(url,arg)=>{
        this.props.addTab(url,arg);
    }
    render(){
        let {style}=Css;
        const {condition,current,pageSize,totalCount}=this.props.store;
        const columns = [{
            title: '序号',
            dataIndex: '',
            key: '',
            render: (text, record,index) => (
                <span>{index+1}</span>
            )
        },{
            title: '结算对象编码',
            dataIndex: 'settlementObjectId',
            key: 'settlementObjectId',
        }, {
            title: '结算对象名称',
            dataIndex: 'orgCname',
            key: 'orgCname',

        },{
            title: '结算方式',
            dataIndex: 'settleType',
            key: 'settleType',
            render: (text, record) => (
                <span>{settleType[record.settleType]}</span>
            )
        },{
            title: '联系人',
            dataIndex: 'contactPerson',
            key: 'contactPerson',
        },{
            title: '结算币种',
            dataIndex: 'currency',
            key: 'currency',
        },{
            title: '银行账号',
            dataIndex: 'bankAccount',
            key: 'bankAccount',
        },{
            title: '操作',
            key: 'action',
            render: (text, record) => (
                <span>
                    <Tooltip placement="top" title="详情" arrowPointAtCenter>
                        <a onClick={this.goTo.bind(this,'/Frame/SettlementDetail',`${record.id}`)}><i className="iconfont icon-chakan" /></a><span className="ant-divider" />
                    </Tooltip>
                    {
                        (!cows.SettlementEditAction)?"":
                            <Tooltip placement="top" title="编辑" arrowPointAtCenter>
                                <a onClick={this.goTo.bind(this,"/Frame/SettlementEdit",`${record.id}`)}><i className="iconfont icon-bianji2" /></a>

                            </Tooltip>
                    }
                </span>
            ),
        }];
        return(
            <div>
                <Row>
                    <Col span="12">
                        <Breadcrumb separator=">" className="breadcrumb">
                            <Breadcrumb.Item href="#/Frame/myHome">首页</Breadcrumb.Item>
                            <Breadcrumb.Item>结算对象</Breadcrumb.Item>
                        </Breadcrumb>
                    </Col>
                </Row>
                <div style={{margin:'0px 10px'}}>
                    <SettlementInfoForm
                        searchData = {this.data}
                        search = {this.search.bind(this)}
                        postForm = {this.getListForm.bind(this)}
                        handleAddTab={this.props.addTab}
                        condition={condition}
                    />
                    <div style={style.ListTable}>
                        <Table columns={columns} rowKey={record => record.id} dataSource={[...this.props.store.SettlementDataTable]}  pagination={this.state.pagination}  size="middle"/>
                    </div>
                </div>
                <Pagination style={style.Pagination} current={current} pageSize={pageSize} total={totalCount} onChange={this.changePage.bind(this)}/>
            </div>
        )
    }
}