import React, {Component} from 'react';
import { observer } from "mobx-react";
import {Row,Col,Form,Input,Select,Modal} from 'antd';
const FormItem = Form.Item;

@observer
class ProductComponent extends Component
{
    constructor(props){
        super(props);
        props.postForm(props.form);
        this.state={
            visibleNoteKey:-1,
        }
    }
    handleCancel(){
        this.props.onCancel();
        this.setState({
            visibleNoteKey:this.state.visibleNoteKey-1
        });
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
        let BillDataRow=this.props.BillDataRow;
        let status={"1":"新增","2":"已确认","3":"已开票","4":"已结款"}


        return(
            <Modal
                title=""
                width='350px'
                visible={this.props.visible}
                onOk={this.props.onOk}
                onCancel={this.handleCancel.bind(this)}
                okText="确认"
                cancelText="取消"
                key={this.state.visibleNoteKey}
            >
                <Form style={{margin:"20px"}}>

                    <Row>
                            <FormItem {...formItemLayout}  label="备注" >
                                {
                                    getFieldDecorator("note",{
                                        initialValue:BillDataRow.note
                                    })(<Input/>)
                                }
                            </FormItem>
                    </Row>
                    <Row style={{display:"none"}}>
                        <FormItem {...formItemLayout}  label="" >
                            {
                                getFieldDecorator("id",{
                                    initialValue:BillDataRow.id
                                })(<Input/>)
                            }
                        </FormItem>
                    </Row>
                </Form>
            </Modal>
        )
    }
}
const NoteModalForm=Form.create()(ProductComponent);

export default NoteModalForm;