import React, {Component} from 'react';
import { observer } from "mobx-react";
import {Row,Col,Form,Input,Icon,Upload,Button,Modal} from 'antd';
const FormItem = Form.Item;

@observer
class ProductComponent extends Component
{
    constructor(props){
        super(props);
        props.postForm(props.form);

    }
    handleCancle(){
        this.props.form.setFieldsValue({invoceNo:""});
        this.props.form.setFieldsValue({invoiceOtherNo:""});
        let close=document.getElementsByClassName("anticon-cross")[0];
        if(close){
            close.click();
        }
        this.props.onCancel();
    }
    onChange({ file, fileList }) {
        this.props.onUploadChange({ file, fileList });

    }
    onRemove(file){

    }

    handleCheckInvoice(rule, value, callback){
        if(value==""){
            callback("发票号不能为空!")
        }else{
            this.props.CheckInvoice({invoiceNo:value},callback);
        }
    }
    render(){
        const {getFieldDecorator}=this.props.form;
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

        return(
            <Modal
                title=""
                width='350'
                visible={this.props.visible}
                onOk={this.props.onOk}
                onCancel={this.handleCancle.bind(this)}
                okText="确认"
                cancelText="取消"
            >
                <div style={{margin:"20px"}}>
                    <Row>
                        <Col>
                            <FormItem {...formItemLayout}  label="发票号码" >
                                {getFieldDecorator(`invoiceNo`,
                                    {

                                        rules: [{validator: this.handleCheckInvoice.bind(this)},
                                            {max:50,message:"发票号码过长！"}
                                    ]

                                    })(<Input/>)
                                }
                            </FormItem>
                        </Col>
                    </Row>
                    <Row>
                        <Col>
                            <FormItem {...formItemLayout}  label="发票代码" >
                                {getFieldDecorator(`invoiceOtherNo`,
                                    {
                                        rules:[{max:50,message:"发票代码过长！"}]
                                    })(<Input/>)
                                }
                            </FormItem>
                        </Col>
                    </Row>
                    <Row>
                        <Col span="8">

                        </Col>
                        <Col span="16">
                            <Upload action='AmsAttachment/upload.action'
                                    onChange={this.onChange.bind(this)}
                                    onRemove={this.onRemove.bind(this)}
                            >
                                <Button>
                                    <Icon type="upload" /> Upload
                                </Button>
                            </Upload>
                        </Col>
                    </Row>
                </div>
            </Modal>
        )
    }
}
const InvoiceModal=Form.create()(ProductComponent);

export default InvoiceModal;