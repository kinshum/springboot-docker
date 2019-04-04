import React, {Component} from 'react';
import { observer } from "mobx-react";
import {Row,Col,Icon,Button,Modal,Pagination,Input,Breadcrumb,Message,Tooltip,Form,Radio,Upload,Table} from 'antd';
import Css from "../PrepareBillStyle";
import NoteModalForm from "./NoteModalForm";
import CheckForm from "./CheckForm";
import * as cows from "../../Limits/Permission";

const confirm = Modal.confirm;
const FormItem = Form.Item;
const RadioGroup = Radio.Group;

@observer
class ProductComponent extends Component
{
    constructor(props){
        super(props);
        this.page = {pageNum: 1, pageSize: 10};
        this.data = {};
        this.id = this.props.match.params.id;
        this.idList=[{id:this.id}];
        //查询费用明细
        props.store.searchPrepareByKey({billNo:this.id});
        //查询单条账单信息
        props.store.selectBillByKey({id:this.id});
        this.state={
            checkVisible:false,
            radioValue:"",
            status:"",
            noteVisible:false,
            pagination:false,
            visibleNoteKey:0,
            visibleCheckKey:-1
        };
    }
    componentWillReceiveProps(nextProps){

        //查询费用明细
        nextProps.store.searchPrepareByKey({billNo:nextProps.match.params.id});
        //查询单条账单信息
        nextProps.store.selectBillByKey({id:nextProps.match.params.id});
    }
    getCheckForm(form){
        this.checkForm=form;
    }
    showCheckModal(status){

        this.setState({
            checkVisible: true,
            status:status,
            visibleCheckKey:this.state.visibleCheckKey-1
        });
    }
    handleModalOk(){
        if(this.state.status>=2){
            Message.info("该账单已确认，不允许重复操作");
            return;
        }else{
            this.checkForm.validateFields((err, data) => {
                if (!err) {
                    this.data = data;
                    if(this.data.checkStatus==1){
                        this.props.store.checkBill(this.idList,this.id);
                    }
                    this.setState({
                        checkVisible: false,
                    });
                }
            })
        }
    }

    hideCheckModal(){
        this.setState({
            checkVisible: false,
            visibleCheckKey:this.state.visibleCheckKey-1
        });
    }

    handleRadioChange(event){
        this.setState({
            radioValue: event.target.value,
        });
    }
    handleNoteOk(){

        this.noteForm.validateFields((err, data) => {
            if (err) {
                return;
            } else {
                this.props.store.modifyBillByKey(data,{id:this.id})
            }
        });
        this.setState({
            noteVisible:false
        })
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
    exportExcel(){
        this.props.store.exportExcel({billNo:this.id})

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
        let PrepareBillDetailTable=store.PrepareBillDetailTable;
        let BillDataRow=store.BillDataRow;
        let money=store.money;
        let total=money.revenueAll-money.disbursementAll;
        let settlementType={"0":"现结","1":"月结"};
        const {getFieldDecorator,getFieldValue}=this.props.form;
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
        let status={"1":"新增","2":"已确认","3":"已开票","4":"已结款"};
        let modifyTime=BillDataRow.modifyTime?BillDataRow.modifyTime:"：未做修改";
        let createTime=BillDataRow.createTime?BillDataRow.createTime:"：未做修改";
        let showhistory="创建时间"+createTime+"；修改时间"+modifyTime;
        let path=localStorage.getItem('appHost')+"/file/attachment/";
        let attachment=store.attachment;
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
                    <Breadcrumb.Item href='#/Frame/PrepareBillList'>预制账单</Breadcrumb.Item>
                    <Breadcrumb.Item>对账单明细</Breadcrumb.Item>
                </Breadcrumb>
                <div style={{margin:"0px 10px"}}>
                <div style={{backgroundColor:"rgb(250, 250, 247)"}}>
                    <div style={{position:"relative"}}>
                        <div style={{height:20,borderBottom:"1px solid #ccc"}}>

                        </div>
                        <p style={style.hStyle}>&nbsp;&nbsp;基本信息【{status[BillDataRow.status]}】&nbsp;&nbsp;</p>
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
                                <Col span="8"  style={{textAlign:"right",color:"rgba(0, 0, 0, 0.85)"}}>
                                    <span style={{lineHeight:"32px"}}>
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
                                            initialValue:BillDataRow.note
                                        })(<Input disabled/>)
                                    }
                                </FormItem>
                            </Col>
                            <Col span="12">
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
                            <Col span="3">
                                共计：{PrepareBillDetailTable.length}条
                            </Col>
                            <Col span="3">
                                总收入：{store.money.revenueAll?store.money.revenueAll.toFixed(2):"0"}
                            </Col>
                            <Col span="3">
                                总支出：{store.money.disbursementAll?store.money.disbursementAll.toFixed(2):"0"}
                            </Col>
                            <Col span="4" style={{textAlign:"right"}}>合计金额：{(total==0)?<span style={{color:"black"}}>{total.toFixed(2)}</span>:(total>0)?<span style={{color:"green"}}>{total.toFixed(2)}</span>:<span style={{color:"red"}}>{total.toFixed(2)}</span>}</Col>
                        </Row>
                    </div>
                    <div  style={style.ListTable}>
                        <Table columns={columns} rowKey={record => record.id} dataSource={[...store.PrepareBillDetailTable]} pagination={this.state.pagination} size="middle"></Table>
                    </div>

                </div>
                <Modal
                    title="修改审核状态"
                    width='350px'
                    visible={this.state.checkVisible}
                    onOk={this.handleModalOk.bind(this)}
                    onCancel={this.hideCheckModal.bind(this)}
                    okText="保存"
                    cancelText="取消"
                    key={this.state.visibleCheckKey}
                >
                    <CheckForm postForm={this.getCheckForm.bind(this)}/>
                </Modal>
                </div>
                <Row style={style.EmptyRow}/>
                <Row style={style.AddBottom}>
                    <Col span={12}>
                        {
                            (!cows.BillAuditAction)?"":
                                ((BillDataRow.status)>1?"":<Button type="primary" style={style.SubmitBtn} onClick={this.showCheckModal.bind(this,store.BillDataRow.status)} className="btn red-btn"><i className="iconfont icon-639" />&nbsp;确认</Button>)
                        }
                        <Button type="primary"  style={style.MiddleBtn} onClick={this.exportExcel.bind(this,store.BillDataRow.status)}><icon className="iconfont icon-daochu"/>&nbsp;导出</Button>
                    </Col>
                    <Col span={12}>
                        <Button type="default" onClick={() =>{window.location.hash="/Frame/PrepareBillList"}} style={style.CancelBtn2}>返回</Button>
                    </Col>
                </Row>

            </div>
        )
    }
}
const PrepareBillDetailContainer=Form.create()(ProductComponent);

export default PrepareBillDetailContainer;