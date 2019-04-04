import React, {Component} from 'react';
import { observer } from "mobx-react";
import moment from 'moment';
import Css from "../AccountingStyle";
import CheckForm from "./CheckForm";
import { TreeSelect ,Form , Input , Icon , Button , Col , Row ,Modal,Radio ,Select,DatePicker,notification} from 'antd';
const FormItem = Form.Item;
const RadioGroup = Radio.Group;
const Option = Select.Option;
import * as cows from "../../Limits/Permission";

@observer
class ProductComponent extends Component
{
    constructor(props){
        super(props);
        props.postForm(props.form);
        this.state = {
            visible: false,
            value:[],
            visibleKey:0
        }
    }
    onChange = (value) => {
        let category = "";
        value.map((item,index)=>{
            if (index < value.length-1) {
                category += item+',';
            }else{
                category += item;
            }
        });
        this.setState({ value: value});
        this.props.form.getFieldDecorator('categoryLevel2Code',{initialValue:category});
    };
    showModal = () => {
        if(this.props.accountids.length!==0){
            this.setState({
                visible: true,
                visibleKey:this.state.visibleKey+1
            });
        }else{
            notification.open
            ({
                message: '审批错误',
                description: '请选择要审批的账单',
            });
        }
    };
    getCheckForm(form){
        this.ckeckForm = form;
    }
    handleOk = (e) => {
        this.ckeckForm.validateFields((err,data)=>{
            if(!err){
                this.data=data
            }
        });
        if(this.data.status=="0"){
            this.props.checked();
        }
        this.setState({
            visible: false,
        });

    };
    handleCancel = (e) => {
        this.setState({
            visible: false,
        });
    };
    goTo=(url,arg)=>{
        this.props.handleAddTab(url,"");
    }
    render(){
        let {style}=Css;
        const {getFieldDecorator}=this.props.form;
        const myDate = new Date(); //获取今天日期
        myDate.setDate(myDate.getDate() - 7);
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
                sm: { span: 2},
            },
            wrapperCol: {
                xs: { span: 2 },
                sm: { span: 16},
            },
        };
        let accountObj=this.props.accountObj;

        const tProps = {
            treeData:[...this.props.costTree],
            value: this.state.value,
            onChange: this.onChange,
            treeCheckable: true,
            searchPlaceholder: '',
        };
        return(
            <div style={style.ListSearchTable}>
                <Row style={{borderBottom:"1px solid #ccc",padding:"10px 20px"}}>
                    <Col span="20">
                        {/*{*/}
                            {/*(!cows.AccountAddAction)?"":*/}
                                {/*<Button type="primary" className="btn" onClick={()=>{window.location.hash="Frame/accountingAdd/1"}}><Icon type="plus" />新增收入</Button>*/}
                        {/*}*/}
                        {/*{*/}
                            {/*(!cows.AccountAddAction)?"":*/}
                                {/*<Button type="primary" className="btn" onClick={()=>{window.location.hash="Frame/accountingAdd/0"}}><Icon type="plus" />新增支出</Button>*/}
                        {/*}*/}
                        {/*{*/}
                            {/*(!cows.AccountAuditAction)?"":*/}
                                {/*<Button type="primary" className="btn" style={{backgroundColor:"red",border:"none"}} onClick={this.showModal}><i className="iconfont icon-639" /> 审批</Button>*/}
                        {/*}*/}
                        {
                            (!cows.AccountAddAction)?"":
                                <Button type="primary" className="btn" onClick={this.goTo.bind(this,"/Frame/accountingAdd/1","")}><Icon type="plus" />新增收入</Button>
                        }
                        {
                            (!cows.AccountAddAction)?"":
                                <Button type="primary" className="btn" onClick={this.goTo.bind(this,"/Frame/accountingAdd/0","")}><Icon type="plus" />新增支出</Button>
                        }
                        {
                            (!cows.AccountAuditAction)?"":
                                <Button type="primary" className="btn" style={{backgroundColor:"red",border:"none"}} onClick={this.showModal}><i className="iconfont icon-639" /> 审批</Button>
                        }
                        <Modal
                            title="修改审核状态"
                            visible={this.state.visible}
                            onOk={this.handleOk}
                            onCancel={this.handleCancel}
                            key={this.state.visibleKey}
                        >
                            <CheckForm postForm={this.getCheckForm.bind(this)}/>
                        </Modal>
                        {/*{*/}
                            {/*(!cows.BillAddAction)?"":*/}
                                {/*<Button type="primary" className="btn" onClick={()=>{window.location.hash="Frame/Settlement/accountingBuild"}}><i className="iconfont icon-wenben" /> 预制账单</Button>*/}
                        {/*}*/}
                        {/*{*/}
                            {/*(!cows.AccountInsertAction)?"":*/}
                                {/*<Button type="primary" className="btn" onClick={()=>{window.location.hash="Frame/Settlement/accountingQuick"}}><Icon type="plus" /> 快捷添加</Button>*/}
                        {/*}  */}
                        {
                            (!cows.BillAddAction)?"":
                                <Button type="primary" className="btn" onClick={this.goTo.bind(this,"/Frame/accountingBuild","")}><i className="iconfont icon-wenben" /> 预制账单</Button>
                        }
                        {
                            (!cows.AccountInsertAction)?"":
                                <Button type="primary" className="btn" onClick={this.goTo.bind(this,"/Frame/accountingQuick","")}><Icon type="plus" /> 快捷添加</Button>
                        }
                    </Col>
                    <Col span="4" style={{textAlign:"right"}}>
                        <Button type="primary" className="btn" onClick={this.props.search.bind(this)}><i className="iconfont icon-search" />&nbsp;搜索</Button>
                    </Col>
                </Row>
                <Form  style={{paddingTop:10,paddingRight:30}}>
                    <Row>
                        <Col span="6">
                            <FormItem {...formItemLayout}  label="明细编号" >
                                {getFieldDecorator('itemId', {
                                    initialValue:this.props.condition.itemId,
                                    rules: [{ message: '搜索条件不能为空格！',whitespace:true}],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                        <Col span="6">
                            <FormItem {...formItemLayout}  label="业务编号" >
                                {getFieldDecorator('refNo', {
                                    initialValue:this.props.condition.refNo,
                                    rules: [{ message: '搜索条件不能为空格！',whitespace:true}],
                                })(<Input />)}
                            </FormItem>
                        </Col>
                        <Col span="6">
                            <FormItem {...formItemLayout}  label="业务类型" >
                                {getFieldDecorator('businessType', {
                                    initialValue:this.props.condition.businessType,
                                    rules: [{ message: '搜索条件不能为空格！',whitespace:true}],
                                })(<Select>
                                    <Option value="">请选择</Option>
                                    {
                                        this.props.businessTypeDataTable.map((item,index)=>{
                                            return(
                                                <Option value={item.businessTypeName} key={item.id}>{item.businessTypeName}</Option>
                                            )
                                        })
                                    }
                                </Select>)}
                            </FormItem>
                        </Col>
                        <Col span="6">
                            <FormItem {...formItemLayout}  label="结算对象" >
                                {getFieldDecorator('settlementObjectId', {
                                    initialValue:this.props.condition.settlementObjectId,
                                })(
                                    <Select showSearch
                                            filterOption={(input, option) => option.props.children.toLowerCase().indexOf(input.toLowerCase()) >= 0}
                                    >
                                        <Option value="">请选择</Option>
                                        {
                                            accountObj?accountObj.map((row,index)=>{
                                                return(
                                                    <Option value={row.id.toString()} key={row.id}>{row.orgCname}</Option>
                                                )
                                            }):""
                                        }
                                    </Select>)
                                }
                            </FormItem>
                        </Col>
                    </Row>
                    <Row>
                        <Col span="6">
                            <FormItem {...formItemLayout}  label="收/支" >
                                {getFieldDecorator('inout', {
                                    initialValue:this.props.condition.inout,
                                    rules: [{ message: '搜索条件不能为空格！',whitespace:true}],
                                })(<Select>
                                    <Option value="">请选择</Option>
                                    <Option value="1">收入</Option>
                                    <Option value="0">支出</Option>
                                </Select>)}
                            </FormItem>
                        </Col>
                        <Col span="6">
                            <FormItem {...formItemLayout}  label="起始日期" >
                                {getFieldDecorator('tradeTime', {

                                    initialValue:this.props.condition.tradeTime?this.props.condition.tradeTime:moment(myDate),
                                })(<DatePicker className="fullWidth"/>)}
                            </FormItem>
                        </Col>
                        <Col span="6">
                            <FormItem {...formItemLayout}  label="截止日期" >
                                {getFieldDecorator('tradeTimeEnd', {
                                    initialValue:this.props.condition.tradeTimeEnd?this.props.condition.tradeTimeEnd:moment(),
                                })(<DatePicker  className="fullWidth"/>)}
                            </FormItem>
                        </Col>
                        <Col span="6">
                            <FormItem {...formItemLayout}  label="状态" >
                                {getFieldDecorator('status', {
                                    initialValue:this.props.condition.status,
                                })(<Select>
                                    <Option value="">请选择</Option>
                                    <Option value="1">新增</Option>
                                    <Option value="2">已修改</Option>
                                    <Option value="3">已审核</Option>
                                    <Option value="4">已生成账单</Option>
                                    <Option value="5">已开票</Option>
                                    <Option value="6">已结款</Option>
                                    <Option value="7">未审核</Option>
                                    <Option value="8">未生成账单</Option>
                                    <Option value="9">未结款</Option>
                                </Select>)}
                            </FormItem>
                        </Col>
                    </Row>
                    <Row>
                        <Col span="24">
                            <FormItem {...formItemLayout1}  label="费用明细" >
                                <TreeSelect {...tProps} />
                            </FormItem>
                        </Col>
                    </Row>
                </Form>
            </div>
        )
    }
}

const AccountingListForm=Form.create()(ProductComponent);

export default AccountingListForm;