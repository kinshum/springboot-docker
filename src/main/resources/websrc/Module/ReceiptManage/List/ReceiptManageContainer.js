import React, {Component} from 'react';
import { observer } from "mobx-react";
import {Row,Col,Icon,Button,Modal,Pagination,Form,Radio,Breadcrumb,message,Tooltip,Table} from 'antd';
import Css from "../ReceiptManageStyle";
import ReceiptManageSearchForm from './ReceiptManageSearchForm';
import InvoiceModal from './InvoiceModalForm';
const FormItem = Form.Item;
const RadioGroup = Radio.Group;
import * as cows from "../../Limits/Permission";

@observer
class ProductComponent extends Component
{
    constructor(props){
        super(props);


        this.state={
            invoicingVisible:false,
            wirteOffVisible:false,
            visibleInvoiceKey:0,
            visibleWriteOffKey:-1,
            billId:"",
            radioValue:"",
            attachment:{},
            pagination:false
        }
        const {condition,current,pageSize}=this.props.store;
        props.store.searchAllAccountObj({});
        props.store.searchReceiveList({condition,current,pageSize});
        props.store.receiveTotalCount({condition});
    }
    handleSubmit(){
        this.searchForm.validateFields((err, data) =>
        {
            let condition;
            if(err) {
                return;
            }else{
                this.pageNum= 1;
                this.pageSize=10;
                if(data.status){
                    condition= Object.assign(data,{inout: "1"});
                    condition.billNo = (data.billNo)?(data.billNo).trim():undefined;
                }else{
                    condition= Object.assign(data,{inout: "1",confirmAfter:"2"});
                    condition.billNo = (data.billNo)?(data.billNo).trim():undefined;
                }
                const {current,pageSize}=this.props.store;
                this.props.store.searchReceiveList({condition,current,pageSize});
                this.props.store.receiveTotalCount({condition});
            }
        });
    }

    handleRadioChange(event){
        this.setState({
            radioValue:event.target.value
        })
    }
    handleWirteOffOk(){

        if(this.state.radioValue==1) {
            const {condition,current,pageSize}=this.props.store;
            this.props.store.WriteOff({id:this.state.billId},condition,current,pageSize);
        }

        this.setState({
            wirteOffVisible: false,

        });
    }

    hanleInvoiceOk=()=>{
        this.invoiceForm.validateFields((err, data) =>
        {
            if(err){
                // message.info("开票未成功，发票号不能为空");
                return;
            }else{
                let sendId={id:this.state.billId};
                let sendData = Object.assign(data,sendId);
                const {condition,current,pageSize}=this.props.store;
                this.props.store.drawInvoice(sendData,this.state.attachment,condition,current,pageSize);
                this.setState({
                    invoicingVisible: false,
                    visibleInvoiceKey:this.state.visibleInvoiceKey+1
                });
            }
           });
    }

    showInvoicingModal = (id,status) => {
        if(status>=3){
            message.info("已开票，不可重复操作")
        }else{
            this.setState({
                invoicingVisible: true,
                billId:id
            });
        }
    }
    showWirteOffModal=(id,status)=>{
        if(status<3){
            message.info("未开票，不可核销操作");
            return;
        }if(status>=4){
            message.info("已核销，不可重复操作");
        }else{
            this.setState({
                wirteOffVisible: true,
                billId:id,
                visibleWriteOffKey:this.state.visibleWriteOffKey-1
            });
        }
    }
    hideInvoicingModal = () => {

        this.setState({
            invoicingVisible: false,
        });
    }

    hideWirteOffModal = () => {

        this.setState({
            wirteOffVisible: false,
        });
    }

    getForm(form){
        this.searchForm=form;
    }
    changePage(page){

        let current = page;
        const {condition,pageSize}=this.props.store;
        this.props.store.clearData();
        this.props.store.searchReceiveList({condition,current,pageSize});
    }
    getInvoiceForm(form){
        this.invoiceForm=form;
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
    onUploadChange({ file, fileList }) {
        if (file.status !== 'uploading') {
            if(fileList.length==1){
                let attachment={}
                fileList.map((item,index)=>{
                    attachment.pictureName=item.response.pictureName?item.response.pictureName:"";
                    attachment.attachmentUrl=item.response.attachmentUrl;
                })
                this.state.attachment=attachment;
            }else{
                message.info('只能上传一张发票,请重新选择');
                this.hideInvoicingModal();
            }


        }

    }

    handleCheckInvoice(value, callback){

        this.props.store.testOneBill(value,callback);

    }
    goTo=(url,arg)=>{
        this.props.addTab(url,arg)
    }

    render(){
        const {getFieldDecorator,getFieldValue}=this.props.form;
        const {current,pageSize,totalCount,accountObjList,ReceiveList,condition}=this.props.store;
        let {style}=Css;
        let formItemLayout = {
            labelCol: {
                xs: { span: 24 },
                sm: { span: 6 },
            },
            wrapperCol: {
                xs: { span: 24 },
                sm: { span:18 },
            },
        };
        let status={"1":"新增","2":"已确认","3":"已开票","4":"已结款"};
        const columns = [
            {
            title: '对账单编号',
            dataIndex: 'billNo',
            key: 'billNo',
            render: (text, record) => (
                <a onClick={this.goTo.bind(this,"/Frame/ReceiptDetail",`${record.id}`)}>{record.billNo}</a>
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
                <span style={{color:record.amount>0?"rgba(0, 0, 0, 0.65)":"red"}}>{record.amount.toFixed(2)}</span>
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
        },{
            title: '操作',
            key: 'action',
            render: (text, record) => (
                <span>
                    {
                        (!cows.BillInvoicedAction)?"":
                            <Tooltip placement="top" title="开票" arrowPointAtCenter>
                                <i onClick={this.showInvoicingModal.bind(this,record.id,record.status)} className="iconfont icon-kbukaifapiao" style={{color:"#108ee9"}}/><span className="ant-divider" />
                            </Tooltip>
                    }
                    {
                        (!cows.BillPaidAction)?"":
                            <Tooltip placement="top" title="核销" arrowPointAtCenter>
                                <i onClick={this.showWirteOffModal.bind(this,record.id,record.status)} className="iconfont icon-weibiaoti--" style={{color:"#108ee9"}}/>
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
                            <Breadcrumb.Item href='#/Frame/ReceiptList'>收款管理</Breadcrumb.Item>
                        </Breadcrumb>
                    </Col>
                    <Col span="6" offset="6">

                    </Col>
                </Row>
                <div style={{margin:'0px 10px'}}>
                    <div>
                        <div  style={{backgroundColor:"rgb(250, 250, 247)"}}>
                            <Row style={{padding:"10px 20px"}}>
                                {/*<Button type="primary" className="btn">*/}
                                    {/*<icon className="iconfont icon-daochu"/>*/}
                                    {/*&nbsp;导出</Button>*/}
                                <Button
                                    type="primary"
                                    className="btn"
                                    onClick={this.handlePrint.bind(this)}>
                                    <icon className="iconfont icon-ccgl-dayinmubanguanli-7"/>
                                    &nbsp;打印</Button>
                                <Button
                                    type="primary"
                                    style={{float:"right",marginRight:"0px"}}
                                    className="btn"
                                    onClick={this.handleSubmit.bind(this)}
                                ><i className="iconfont icon-search" />&nbsp;搜索</Button>
                            </Row>
                            <div style={{borderBottom:"1px solid #ccc"}}></div>
                            <ReceiptManageSearchForm
                                postForm={this.getForm.bind(this)}
                                accountObj={accountObjList}
                                condition={condition}
                            />
                        </div>
                        <div  id="printDiv" style={style.ListTable}>
                            <Table
                                columns={columns}
                                dataSource={[...ReceiveList]}
                                pagination={this.state.pagination}
                                size="middle"
                                rowKey={record => record.id}
                            />
                        </div>

                    </div>
                    <Modal
                        title=""
                        width='350px'
                        visible={this.state.wirteOffVisible}
                        onOk={this.handleWirteOffOk.bind(this)}
                        onCancel={this.hideWirteOffModal}
                        okText="确认"
                        cancelText="取消"
                        key={this.state.visibleWriteOffKey}
                    >
                        <div style={{margin:"20px"}}>
                            <Row>
                                <span>是否核销？</span>
                                <RadioGroup onChange={this.handleRadioChange.bind(this)}>
                                    <Radio value={1}>是</Radio>
                                    <Radio value={2}>否</Radio>

                                </RadioGroup>
                            </Row>
                        </div>
                    </Modal>
                    <InvoiceModal
                        title=""
                        width='350px'
                        visible={this.state.invoicingVisible}
                        onOk={this.hanleInvoiceOk.bind(this)}
                        onCancel={this.hideInvoicingModal}
                        okText="确认"
                        cancelText="取消"
                        postForm={this.getInvoiceForm.bind(this)}
                        onUploadChange={this.onUploadChange.bind(this)}
                        key={this.state.visibleInvoiceKey}
                        CheckInvoice={this.handleCheckInvoice.bind(this)}
                    />
                </div>
                <Pagination
                    style={style.Pagination}
                    current={current}
                    pageSize={pageSize}
                    total={totalCount}
                    onChange={this.changePage.bind(this)}
                />

            </div>
        )
    }
}
const ReceiptManageContainer=Form.create()(ProductComponent);

export default ReceiptManageContainer;