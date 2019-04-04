import React, {Component} from 'react';
import { observer } from "mobx-react";
import {Row,Col,Icon,Button,Modal,Pagination,Checkbox,Select,Input,Form,Radio,Breadcrumb,message,Tooltip,Table } from 'antd';
import Css from "../PaymentManageStyle";
import PaymentManageSearchForm from './PaymentManageSearchForm';
import InvoiceModal from './InvoiceModalForm';
const confirm = Modal.confirm;
const FormItem = Form.Item;
const RadioGroup = Radio.Group;
import * as cows from "../../Limits/Permission";

@observer
export default class PaymentManageContainer extends Component {
    constructor(props) {
        super(props);
        this.state = {
            invoicingVisible: false,
            wirteOffVisible: false,
            visibleInvoiceKey:0,
            visibleWriteOffKey:-1,
            billId: "",
            radioValue: "",
            attachment:{},
            pagination:false,
        }
        props.store.searchAllAccountObj({});
        const {condition,current,pageSzie}=this.props.store;
        props.store.searchPaymentList({condition,current,pageSzie});
        props.store.paymentTotalCount({condition});
    }

    showInvoicingModal = (id, status) => {
        if (status >= 3) {
            message.info('已开票，不可重复操作');
        } else {
            this.setState({
                invoicingVisible: true,
                billId: id,
                visibleInvoiceKey:this.state.visibleInvoiceKey+1
            });
        }
    }

    showWirteOffModal = (id, status) => {
        if(status<3){
            message.info("未开票，不可核销操作");
            return;
        }if (status >= 4) {
            message.info("已核销，不可重复操作");
        } else {
            this.setState({
                wirteOffVisible: true,
                billId: id,
                visibleWriteOffKey:this.state.visibleWriteOffKey-1
            });
        }
    }

    handleInvoiceOk() {
        this.invoiceForm.validateFields((err, data) => {
            if(err){
                message.info("开发票未成功,请填写发票号");
                return;
            }else{
                let sendId = {id: this.state.billId};
                let sendData = Object.assign(data, sendId);
                const {condition,current,pageSize}=this.props.store;
                this.props.store.drawInvoice(sendData,this.state.attachment, condition, current,pageSize);
                this.setState({
                    invoicingVisible: false,
                });
            }
        });
    }

    handleCheckInvoice(value, callback){

        this.props.store.testOneBill(value,callback);

    }

    handleWirteOffOk() {

        if (this.state.radioValue == 1) {
            const {condition,current,pageSize}=this.props.store;
            this.props.store.WriteOff({id: this.state.billId}, condition,current,pageSize);
        }
        this.setState({
            wirteOffVisible: false,
        });
    }

    hideInvoicingModal = () => {
        this.setState({
            invoicingVisible: false,
        });
    }

    handleRadioChange(event) {
        this.setState({
            radioValue: event.target.value
        })
    }

    hideWirteOffModal = () => {
        this.setState({
            wirteOffVisible: false,
        });
    }

    handleSubmit() {
        this.searchForm.validateFields((err, data) => {
            let condition;
            if (err) {
                return;
            } else {
                this.pageNum=1;
                this.pageSize= 10;
                if(data.status){
                    condition= Object.assign(data,{inout: "0"});
                    condition.billNo = (data.billNo)?(data.billNo).trim():undefined;
                }else{
                    condition= Object.assign(data,{inout: "0",confirmAfter:"2"});
                    condition.billNo = (data.billNo)?(data.billNo).trim():undefined;
                }
                const {current,pageSize}=this.props.store;
                this.props.store.searchPaymentList({condition,current,pageSize});
                this.props.store.paymentTotalCount({condition});
            }
        });
    }

    getForm(form) {
        this.searchForm = form;
    }

    getInvoiceForm(form) {
        this.invoiceForm = form;
    }

    changePage(page) {
        this.pageNum = page
        this.props.store.clearData();
        let current=page;
        const {condition,pageSize}=this.props.store;
        this.props.store.searchPaymentList({condition,current,pageSize});
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
            let attachment={}
            if(fileList.length==1){
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
    goTo=(url,arg)=>{
        this.props.addTab(url,arg)
    }

    render() {
        let {style} = Css;

        let formItemLayout = {
            labelCol: {
                xs: {span: 24},
                sm: {span: 4},
            },
            wrapperCol: {
                xs: {span: 24},
                sm: {span: 20},
            },
        };
        let store = this.props.store;
        const {current,pageSize,totalCount}=this.props.store;
        let status = {"1": "新增", "2": "已确认", "3": "已开票", "4": "已结款"};
        const columns = [
            {
            title: '对账单编号',
            dataIndex: 'billNo',
            key: 'billNo',

            render: (text, record) => (
                <a onClick={this.goTo.bind(this,"/Frame/PaymentDetail",`${record.id}`)}>{record.billNo}</a>
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
        }, {
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
                                <i className="iconfont icon-kbukaifapiao"
                                   onClick={this.showInvoicingModal.bind(this, record.id, record.status)}
                                   style={{color: "#108ee9"}}/>
                                <span className="ant-divider"/>
                            </Tooltip>
                    }
                    {
                        (!cows.BillPaidAction)?"":
                            <Tooltip placement="top" title="核销" arrowPointAtCenter>
                                <i className="iconfont icon-weibiaoti--"
                                   onClick={this.showWirteOffModal.bind(this, record.id, record.status)}
                                   style={{color: "#108ee9"}}/>
                            </Tooltip>
                    }
                </span>
            ),
        }];
        return (
            <div>
                <Row>
                    <Col span="12">
                        <Breadcrumb separator=">" className="breadcrumb">
                            <Breadcrumb.Item href="#/Frame/myHome">首页</Breadcrumb.Item>
                            <Breadcrumb.Item>付款管理</Breadcrumb.Item>
                        </Breadcrumb>
                    </Col>
                    <Col span="6" offset="6">

                    </Col>
                </Row>
                <div style={{margin:"0px 10px"}}>
                    <div style={{backgroundColor: "rgb(250, 250, 247)"}}>
                        <Row style={{padding: "10px 20px"}}>
                            {/*<Button type="primary" className="btn">*/}
                                {/*<icon className="iconfont icon-daochu"/>*/}
                                {/*&nbsp;导出</Button>*/}
                            <Button type="primary"
                                    className="btn"
                                    onClick={this.handlePrint.bind(this)}>
                                <icon className="iconfont icon-ccgl-dayinmubanguanli-7"/>
                                &nbsp;打印</Button>
                            <Button type="primary"
                                    className="btn"
                                    style={{float: "right",marginRight:"0px"}}
                                    onClick={this.handleSubmit.bind(this)}
                            ><i className="iconfont icon-search" />&nbsp;搜索</Button>
                        </Row>
                        <div style={{borderBottom: "1px solid #ccc"}}></div>
                        <PaymentManageSearchForm
                            postForm={this.getForm.bind(this)}
                            accountObj={store.accountObjList}
                        />
                    </div>
                    <div id="printDiv" style={style.ListTable}>
                        <Table columns={columns} rowKey={record => record.id} dataSource={[...store.PaymentList]} pagination={this.state.pagination} size="middle"/>
                    </div>

                </div>
                <Pagination
                    style={style.Pagination}
                    current={current}
                    pageSize={pageSize}
                    total={totalCount}
                    onChange={this.changePage.bind(this)}
                />

                <InvoiceModal
                    title=""
                    width='350px'
                    visible={this.state.invoicingVisible}
                    key={this.state.visibleInvoiceKey}
                    onOk={this.handleInvoiceOk.bind(this)}
                    onCancel={this.hideInvoicingModal}
                    okText="确认"
                    cancelText="取消"
                    postForm={this.getInvoiceForm.bind(this)}
                    onUploadChange={this.onUploadChange.bind(this)}
                    CheckInvoice={this.handleCheckInvoice.bind(this)}

                />
                <Modal
                    title=""
                    width='350px'
                    key={this.state.visibleWriteOffKey}
                    visible={this.state.wirteOffVisible}
                    onOk={this.handleWirteOffOk.bind(this)}
                    onCancel={this.hideWirteOffModal}
                    okText="确认"
                    cancelText="取消"
                >
                    <div style={{margin: "20px"}}>
                        <Row>
                            <span>是否核销？</span>
                            <RadioGroup onChange={this.handleRadioChange.bind(this)}>
                                <Radio value={1}>是</Radio>
                                <Radio value={2}>否</Radio>
                            </RadioGroup>
                        </Row>
                    </div>
                </Modal>
            </div>
        )
    }
}
