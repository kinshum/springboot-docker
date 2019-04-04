import React, {Component} from 'react';
import { observer } from "mobx-react";
import {Row,Col,Icon,Button,Modal,Pagination,Select,Input,Breadcrumb,Tooltip,Form,Upload,Table} from 'antd';
import Css from "../PaymentManageStyle";
import NoteModalForm from "./NoteModalForm";
const FormItem = Form.Item;
const confirm = Modal.confirm;

@observer
class ProductComponent extends Component
{
    constructor(props){
        super(props);
        this.page = {pageNum: 1, pageSize: 10};
        this.data = {};
        this.fileList=[];
        this.state={
            noteVisible:false,
            pagination:false,
        };
        this.id = this.props.match.params.id;
        props.store.searchPaymentByKey({billNo:this.id});
        //查询单条账单信息
        props.store.selectBillByKey({id:this.id});

    }
    componentWillReceiveProps=(nextprops)=>{
        nextprops.store.searchPaymentByKey({billNo:nextprops.match.params.id});
        //查询单条账单信息
        nextprops.store.selectBillByKey({id:nextprops.match.params.id});
    }
    handleNoteOk(){

        this.noteForm.validateFields((err, data) => {
            if (err) {
                return;
            } else {
                this.props.store.modifyBillByKey(data,{id:this.id});
                this.setState({
                    noteVisible:false,

                })
            }
        });

    }
    hideNoteModal(){
        this.setState({
            noteVisible:false,
        })
    }
    getNoteForm(form){
        this.noteForm=form;
    }
    showNoteModal(){
        this.setState({
            noteVisible:true
        })
    }
    onRemove(file){
        let sendData={};
        sendData.id=file.uid;
        sendData.url=file.oname;
        this.props.store.deleteAttachment(sendData,{id:this.id});

    }

    render(){
        let {style}=Css;
        let store=this.props.store;
        let PaymentDetailTable=store.PaymentDetailTable;
        let BillDataRow=store.BillDataRow;
        let attachment=store.attachment;
        let total=store.money.revenueAll-store.money.disbursementAll;
        let settlementType={"0":"现结","1":"月结"};
        let status={"1":"新增","2":"已确认","3":"已开票","4":"已结款"};
        let modifyTime=BillDataRow.modifyTime?BillDataRow.modifyTime:"：未做修改";
        let createTime=BillDataRow.createTime?BillDataRow.createTime:"：未做修改";
        let showhistory="创建时间"+createTime+"；修改时间"+modifyTime;
        let path=localStorage.getItem('appHost')+"/file/attachment/";
        const {getFieldDecorator,getFieldValue}=this.props.form;
        if(attachment){
            this.fileList=[{
                url:path+attachment.attachmentUrl,
                name:attachment.pictureName,
                uid:attachment.id?attachment.id:1,
                status:"done",
                oname:attachment.attachmentUrl
            }];
        }

        const uploadProps = {
            action: '/',
            fileList: this.fileList
        };
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
        const columns = [{
            title: '明细编号',
            dataIndex: 'itemId',
            key: 'itemId',
        },{
            title: '结算对象',
            dataIndex: 'settlementObjectName',
            key: 'settlementObjectName',
        },{
            title: '结算方式',
            dataIndex: 'settleType',
            key: 'settleType',
            render: (text, record) => (
                <span>{settlementType[record.settleType]}</span>
            )

        },{
            title: '交易金额',
            dataIndex: 'amount',
            key: 'amount',
            render: (text, record) => (
                <span style={{color:record.amount>0?"rgba(0, 0, 0, 0.65)":"red"}}>{record.amount.toFixed(2)}</span>
            )
        }, {
            title: '交易币种',
            dataIndex: 'currency',
            key: 'currency',
        },{
            title: '汇率',
            dataIndex: 'myExchangeRate',
            key: 'myExchangeRate',

        },{
            title: '业务编号',
            dataIndex: 'refNo',
            key: 'refNo',
        },{
            title: '业务类型',
            dataIndex: 'businessType',
            key: 'businessType',
        },{
            title: '交易时间',
            dataIndex: 'tradeTime',
            key: 'tradeTime',
        },{
            title: '备注信息',
            dataIndex: 'note',
            key: 'note',
            render: (text, record) => (
                <span>
                <Tooltip placement="top" title={record.note} arrowPointAtCenter>
                    <span style={{cursor:"pointer"}}>查看备注</span>
                </Tooltip>
                </span>
            ),
        }];
        return(
            <div>

                    <Breadcrumb separator=">" className="breadcrumb">
                        <Breadcrumb.Item href="#/Frame/myHome">首页</Breadcrumb.Item>
                        <Breadcrumb.Item href='#/Frame/Settlement/PaymentList'>付款管理</Breadcrumb.Item>
                        <Breadcrumb.Item>对账单明细</Breadcrumb.Item>
                    </Breadcrumb>
                <div style={{margin:"0px 10px"}}>
                <div style={{backgroundColor:"rgb(250, 250, 247)"}}>
                    <div style={{position:"relative"}}>
                        <div style={{height:20,borderBottom:"1px solid #ccc"}}></div>
                        <p style={style.hStyle}>&nbsp;&nbsp;基本信息&nbsp;&nbsp;</p>
                    </div>
                    <div  style={{backgroundColor:"rgb(250, 250, 247)",padding:"0px 20px",margin:"0 30px"}}>
                        <Row style={{paddingTop:"30px"}}>
                            <Col span="6">
                                <FormItem {...formItemLayout}  label="对账单编号" >
                                    {
                                        getFieldDecorator("billNo",{
                                            initialValue:BillDataRow.billNo
                                        })(<Input disabled/>)
                                    }
                                </FormItem>
                            </Col>
                            <Col span="6">
                                <FormItem {...formItemLayout}  label="收支类型" >
                                    {
                                        getFieldDecorator("billNo",{
                                            initialValue:BillDataRow.inout==1?"收入":"支出"
                                        })(<Input disabled/>)
                                    }
                                </FormItem>
                            </Col>
                            <Col span="6">
                                <FormItem {...formItemLayout}  label="结算对象" >
                                    {
                                        getFieldDecorator("billNo",{
                                            initialValue:BillDataRow.settlementObjectName
                                        })(<Input disabled/>)
                                    }
                                </FormItem>
                            </Col>
                            <Col span="6">
                                <FormItem {...formItemLayout}  label="创建时间" >
                                    {
                                        getFieldDecorator("billNo",{
                                            initialValue:BillDataRow.createTime
                                        })(<Input disabled/>)
                                    }
                                </FormItem>
                            </Col>
                        </Row>
                        <Row >
                            <Col span="6">
                                <FormItem {...formItemLayout}  label="结算币种" >
                                    {
                                        getFieldDecorator("billNo",{
                                            initialValue:BillDataRow.currency
                                        })(<Input disabled/>)
                                    }
                                </FormItem>
                            </Col>

                            <Tooltip placement="top" title={showhistory} arrowPointAtCenter>
                            <Col span="6">

                                <FormItem {...formItemLayout}  label="状态" >
                                {
                                getFieldDecorator("status",{
                                initialValue:status[BillDataRow.status]
                                })(<Input disabled/>)
                                }
                                </FormItem>
                            </Col>

                            </Tooltip>
                            <Col span="6">
                                <Col span="8"  style={{textAlign:"right"}}>
                                    <span onClick={this.showNoteModal.bind(this)} style={{lineHeight:"32px",color:"rgba(0, 0, 0, 0.85)"}}>
                                        关联附件：
                                    </span>
                                </Col>
                                <Col span="16" style={{textAlign:"left"}}>
                                    <Upload
                                        {...uploadProps}
                                        accept=".jpg,.png,.doc,.docx,.pdf,.xls,.xlsx"
                                        onRemove={this.onRemove.bind(this)}
                                    >

                                    </Upload>
                                </Col>
                            </Col>
                        </Row>
                        <Row>
                            <Col span="12">
                                <FormItem {...formItemLayout1}  label="备注" >
                                    {
                                        getFieldDecorator("note",{
                                            rules: [{

                                            }],
                                            initialValue:BillDataRow.note
                                        })(<Input disabled/>)
                                    }
                                </FormItem>
                            </Col>
                            <Col span="12">
                                {/*<button style={{lineHeight:"28px"}} onClick={this.showNoteModal.bind(this)}>*/}
                                    {/*修改备注*/}
                                {/*</button>*/}
                                <Row>
                                    <Col span="4"  style={{textAlign:"right"}}>
                                        <a onClick={this.showNoteModal.bind(this)} style={{lineHeight:"32px"}}>
                                            修改备注&nbsp;&nbsp;&nbsp;&nbsp;
                                        </a>
                                    </Col>
                                </Row>
                                <NoteModalForm
                                    title=""
                                    width='700px'
                                    visible={this.state.noteVisible}
                                    onOk={this.handleNoteOk.bind(this)}
                                    onCancel={this.hideNoteModal.bind(this)}
                                    okText="确认"
                                    cancelText="取消"
                                    postForm={this.getNoteForm.bind(this)}
                                    BillDataRow={BillDataRow}
                                    attachment={attachment}

                                />

                            </Col>
                        </Row>
                    </div>
                    <div style={{background:"#ececec",height:"10px"}}></div>
                    <div style={{position:"relative"}}>
                        <div style={{height:20,borderBottom:"1px solid #ccc"}}></div>
                        <p style={style.hStyle}>&nbsp;&nbsp;对账单明细&nbsp;&nbsp;</p>
                    </div>
                    <div style={{paddingTop:"30px",margin:"0 30px"}}>
                        <Row style={{marginTop:"10px"}}>
                            <Col span="10">

                            </Col>
                            <Col span="2">
                                共计：{PaymentDetailTable.length}条
                            </Col>
                            <Col span="4">
                                总收入：{store.money.revenueAll?store.money.revenueAll.toFixed(2):"0"}
                            </Col>
                            <Col span="4">
                                总支出：{store.money.disbursementAll?store.money.disbursementAll.toFixed(2):"0"}
                            </Col>
                            <Col span="4" style={{textAlign:"right"}}>合计金额：{(total==0)?<span style={{color:"black"}}>{total.toFixed(2)}</span>:(total>0)?<span style={{color:"green"}}>{total.toFixed(2)}</span>:<span style={{color:"red"}}>{total.toFixed(2)}</span>}</Col>
                        </Row>
                    </div>
                    <div  style={style.ListTable}>
                        <Table columns={columns} rowKey={record => record.id} dataSource={[...store.PaymentDetailTable]} pagination={this.state.pagination} size="middle"></Table>

                    </div>

                </div>
                </div>
                <Row style={style.EmptyRow}/>
                <Row style={style.AddBottom}>
                    <Col span={9}>
                        {/*<Button type="primary"  style={style.SubmitBtn}><icon className="iconfont icon-daochu"/>导出</Button>*/}
                    </Col>
                    <Col span={15}>
                        <Button type="default" onClick={() =>{window.location.hash="/Frame/PaymentList"}} style={style.CancelBtn}>返回</Button>
                    </Col>
                </Row>
            </div>
        )
    }
}
const PaymentDetailContainer=Form.create()(ProductComponent);

export default PaymentDetailContainer;