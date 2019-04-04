import React, {Component} from 'react';
import { observer } from "mobx-react";
import Css from "../AccountingStyle";
import CheckForm from "./CheckForm";
import { Button , Col , Row ,Modal,message,Upload} from 'antd';

@observer
export default class AccountingDetail extends Component {
    fileList = [];
    constructor(props){
        super();
        this.data={}
        this.state={
            visible:false,
            previewVisible:false,
            previewImage:"",
            visibleKey:0
        }
    }
    handleCancelImg = () => this.setState({ previewVisible: false })

    handlePreview = (file) => {
        this.setState({
            previewImage: file.url || file.thumbUrl,
            previewVisible: true,
        });
    }
    showModal = () => {
        if(this.props.account.status==1||this.props.account.status==2){
            this.setState({
                visible: true,
                visibleKey:this.state.visibleKey+1
            })
        }else{
            message.info('该记账明细已审批！');
        }
    }
    handleOk= (id) => {
        this.ckeckForm.validateFields((err,data)=>{
            if(!err) {
                this.data = data;
                this.setState({
                    visible: false,
                })
            }
        })
        if(this.data.status=="0"){
            this.props.check(id);
        }
    }
    handleCancel= () => {
        this.setState({
            visible: false,
        })
    }
    getCheckForm(form){
        this.ckeckForm = form;
    }
    handlePrint (){
        let printHtml=document.getElementById('accountPrint').innerHTML;
        let app=document.getElementById("app");
        app.style.display= "none";
        let el = document.createElement('div')
        el.innerHTML = printHtml;
        document.body.appendChild(el);
        window.print();
        document.body.removeChild(el);
        el.style.display="none";
        app.style.display= "block";
        // document.body.innerHTML = document.getElementById('accountPrint').innerHTML;
        // window.print();
    }
    render(){
        let {style} = Css;
        let account = this.props.account;
        const { previewVisible, previewImage } = this.state;
        if(this.props.attachment){
            if(this.props.attachment.attachmentUrl){
                this.fileList=[{
                    url:localStorage.getItem('appHost')+"/file/attachment/"+this.props.attachment.attachmentUrl,
                    name:this.props.attachment.pictureName,
                    uid:this.props.attachment.id?this.props.attachment.id:-1,
                    status:"done",
                }];
            }else{
                this.fileList=[];
            }
        }else{
            this.fileList=[];
        }
        let amount = this.props.amount.toFixed(2);
        return(
            <div>
                <div  style={style.ModalFormStyle} id="accountPrint">
                    <div style={{height:20,borderBottom:"1px solid #ccc"}}></div>
                    <p style={style.hModalStyle}>&nbsp;&nbsp;{account.itemId}&nbsp;&nbsp;</p>
                    <div  style={style.DetailContent}>
                        <Row  style={style.DetailRow}>
                            <Col span="8">结算对象：{account.settlementObjectName}</Col>
                            <Col span="8">结算方式：
                                {
                                    (account.settleType=="0")?"现结":
                                    (account.settleType=="1")?"月结":null
                                }
                            </Col>
                            <Col span="8">业务类型：{account.businessType}</Col>
                        </Row>
                        <Row style={style.DetailRow}>
                            <Col span="8">业务编号：{account.refNo}</Col>
                            <Col span="8">费用类型：{account.categoryLevel1Name}</Col>
                            <Col span="8">费用明细：{account.categoryLevel2Name}</Col>
                        </Row>
                        <Row style={style.DetailRow}>
                            <Col span="8">币种：{account.currency}-{account.accountCurrency}</Col>
                            <Col span="8">汇率：{account.exchangeRate}</Col>
                            <Col span="8">交易金额：{amount}</Col>
                        </Row>
                        <Row style={style.DetailRow}>
                            <Col span="8">收/支：
                                {
                                    (account.inout=="1")?"收入":
                                    (account.inout=="0")?"支出":null
                                }
                            </Col>
                        </Row>
                        <Row  style={style.DetailRow}>
                            <Col span="24">交易概要：{account.accountBrief}</Col>
                        </Row>
                        <Row style={style.DetailRow}>
                            <Col span="24">备注：{account.note}</Col>
                        </Row>
                        <Row style={style.DetailRow}>
                            <Col span={2} style={{color:"#333"}}>附件：</Col>
                            <Col span={22}>
                                <div className="clearfix">
                                    <Upload
                                        listType="picture-card"
                                        fileList={this.fileList}
                                        onPreview={this.handlePreview}
                                        accept=".jpg,.png,.doc,.docx,.pdf,.xls,.xlsx"
                                    >
                                    </Upload>
                                    <Modal visible={previewVisible} footer={null} onCancel={this.handleCancelImg}>
                                        <img alt="example" style={{ width: '100%' }} src={previewImage} />
                                    </Modal>
                                </div>
                            </Col>
                        </Row>
                    </div>
                </div>
                <Row>
                    <Col span="4" offset="7">
                        <Button onClick={this.props.onCancel.bind(this)}>关闭</Button>
                    </Col>
                    <Col span="4">
                        <Button onClick={this.showModal}>审批</Button>
                        <Modal
                            title="修改审核状态"
                            visible={this.state.visible}
                            onOk={this.handleOk.bind(this,account.id)}
                            onCancel={this.handleCancel}
                            key={this.state.visibleKey}
                        >
                            <CheckForm postForm={this.getCheckForm.bind(this)}/>
                        </Modal>
                    </Col>
                    <Col span="4">
                        <Button onClick={this.handlePrint.bind(this)}>打印</Button>
                    </Col>
                </Row>
            </div>
        )
    }
}
