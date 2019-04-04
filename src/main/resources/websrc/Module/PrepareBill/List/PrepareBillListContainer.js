import React, {Component} from 'react';
import { observer } from "mobx-react";
import {Row,Col,Icon,Button,Pagination,Checkbox,Select,Input,Form,Radio,Breadcrumb,Table} from 'antd';
import Css from "../PrepareBillStyle";
import PrepareBillListSearchForm from './PrepareBillListSearchForm';
const FormItem = Form.Item;
const RadioGroup = Radio.Group;
@observer
class ProductComponent extends Component
{
    constructor(props){
        super(props);
        this.data={};
        this.idList=[];
        this.state={
            checkVisible:false,
            radioValue:"",
            pagination:false
        };
        const {condition , pageSize , current}=props.store;
        props.store.searchAllAccountObj({});
        props.store.searchPrepareList({condition,current,pageSize});
        props.store.billTotalCount({condition});
    }
    handleOnChange(event){
        if(event.target.checked){
            this.idList.push({
                id:event.target.value,

            })
        }else{
            this.idList.map((item,index)=>{
                if(item.id==event.target.value){
                    this.idList.splice(index,1)
                }
            })
        }
    }
    handleSubmit(){
        this.searchForm.validateFields((err, data) =>
        {
            if(err) {
                return;
            }else{
                let condition=data;
                const {current,pageSize}=this.props.store;
                this.props.store.searchPrepareList({condition,current,pageSize});
                this.props.store.billTotalCount({condition});
            }
        });
    }

    changePage(page){
        let current = page;
        const {condition,pageSize}=this.props.store;
        this.props.store.clearData()
        this.props.store.searchPrepareList({condition,current,pageSize});
    }

    getForm(form){
        this.searchForm=form;
    }
    goTo(url,arg){
        this.props.addTab(url,arg)
    }

    handlePrint(){

    let printHtml=document.getElementById('printDiv').innerHTML;
    let app=document.getElementById("app");
        app.style.display= "none";
        let el = document.createElement('div');
        el.innerHTML = printHtml;
        document.body.appendChild(el);
        window.print();
        document.body.removeChild(el);
        el.style.display="none";
        app.style.display= "block";

    }


    render(){
        const {getFieldDecorator,getFieldValue}=this.props.form;
        let {style}=Css;
        const {current,pageSize,tatalCount,accountObjList,PrepareList,condition}=this.props.store
        let formItemLayout = {
            labelCol: {
                xs: { span: 24 },
                sm: { span: 6 },
            },
            wrapperCol: {
                xs: { span: 24 },
                sm: { span: 18 },
            },
        };
        let status={"1":"新增","2":"已确认","3":"已开票","4":"已结款"};
        const columns = [
            {
            title: '对账单编号',
            dataIndex: 'billNo',
            key: 'billNo',
            render: (text, record) => (
                <a onClick={this.goTo.bind(this,"/Frame/PrepareBillDetail",`${record.id}`)}>{record.billNo}</a>
            )

        }, {
            title: '结算对象',
            dataIndex: 'settlementObjectName',
            key: 'settlementObjectName',
        }, {
            title: '总收入',
            dataIndex: 'totalIncome',
            key: 'totalIncome',
            render: (text, record) => (
                <span>{record.totalIncome.toFixed(2)}</span>
            )
        },{
            title: '总支出',
            dataIndex: 'totalOutcome',
            key: 'totalOutcome',
            render: (text, record) => (
                <span>{record.totalOutcome.toFixed(2)}</span>
            )
        },{
            title: '账单金额',
            dataIndex: 'amount',
            key: 'amount',
            render: (text, record) => (
                <span style={{color:record.amount>0?"rgba(0, 0, 0, 0.65)":"red"}} >{record.amount.toFixed(2)}</span>
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
                <span>{status[record.status]}</span>
            )
        },{
            title: '日期',
            dataIndex: 'createTime',
            key: 'createTime',
        }];
        return(
            <div>
                <Row>
                    <Col span="12">
                        <Breadcrumb separator=">" className="breadcrumb">
                            <Breadcrumb.Item href="#/Frame/myHome">首页</Breadcrumb.Item>
                            <Breadcrumb.Item>预制账单</Breadcrumb.Item>
                        </Breadcrumb>
                    </Col>
                    <Col span="6" offset="6">

                    </Col>
                </Row>
                <div style={{margin:'0px 10px'}}>
                    <div>
                        <div  style={{backgroundColor:"rgb(250, 250, 247)"}}>
                            <Row style={{padding:"10px 20px"}}>
                                <Button
                                    onClick={this.handlePrint.bind(this)}
                                    type="primary"
                                    className="btn">
                                    <icon className="iconfont icon-ccgl-dayinmubanguanli-7"/>
                                    &nbsp;打印
                                </Button>
                                <Button
                                    type="primary"
                                    style={{float:"right",marginRight:"0px"}}
                                    className="btn"
                                    onClick={this.handleSubmit.bind(this)}
                                ><i className="iconfont icon-search" />&nbsp;搜索</Button>

                            </Row>
                            <div style={{borderBottom:"1px solid #ccc"}}></div>
                            <PrepareBillListSearchForm
                                postForm={this.getForm.bind(this)}
                                accountObj={accountObjList}
                                condition={condition}
                            />
                        </div>
                        <div id="printDiv" style={style.ListTable}>
                            <Table rowKey={record => record.id} columns={columns} dataSource={[...PrepareList]} pagination={this.state.pagination}  size="middle"/>
                        </div>
                    </div>
                </div>

                <Pagination  style={style.Pagination} current={current} pageSize={pageSize} total={tatalCount} onChange={this.changePage.bind(this)}/>
            </div>
        )
    }
}
const PaymentBillListContainer=Form.create()(ProductComponent);

export default PaymentBillListContainer;
