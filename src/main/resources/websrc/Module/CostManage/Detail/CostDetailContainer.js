import React, {Component} from 'react';
import { observer } from "mobx-react";
import { Form , Input , Icon , Button , Col , Row ,Breadcrumb,Pagination,Modal,Tooltip} from 'antd';
const FormItem = Form.Item;
import Css from "../CostStyle";
import DetailAddInfoForm from "./DetailAddInfoForm"
import DetailEditInfoForm from "./DetailEditInfoForm"
const inout = {1:'收入',0:'支出'};

@observer
class CostDetailComponent extends Component
{
    constructor(props){
        super(props);
        this.page = {pageNum: 1, pageSize: 5};
        this.id = this.props.match.params.id;
        props.store.CostSelectByKey({id:this.id});
        props.store.CostSelect({pid:this.id},this.page.pageNum,this.page.pageSize);
        props.store.CostTotalCount({pid:this.id});
        this.state = {
            visibleSee: false,
            visibleAdd: false,
            visibleEdit: false,
            visibleAddKey:0,
            visibleEditKey:-1
        }
    }
    componentWillReceiveProps=(nextprops)=>{
        nextprops.store.CostSelectByKey({id:nextprops.match.params.id});
        nextprops.store.CostSelect({pid:nextprops.match.params.id},this.page.pageNum,this.page.pageSize);
        nextprops.store.CostTotalCount({pid:nextprops.match.params.id});
    }
    changePage(page){
        this.page.pageNum = page;
        this.props.store.CostSelect({pid:this.id},this.page.pageNum,this.page.pageSize);
    }
    getDetailAddInfoForm(form){
        this.DetailAddInfoForm = form;
    }
    getDetailEditInfoForm(form){
        this.DetailEditInfoForm = form;
    }
    showModalSee = (id) => {
        this.setState({
            visibleSee: true,
        });
        this.props.store.CostSelectDetailByKey({id:id});
    };
    handleOkSee = (e) => {
        this.setState({
            visibleSee: false,
        });
    };
    showModalAdd = () => {
        this.setState({
            visibleAdd: true,
            visibleAddKey:this.state.visibleAddKey+1
        });
    };
    handleOkAdd = (e) => {
        this.DetailAddInfoForm.validateFields((err,data)=>{
            if(!err){
                this.DetailAddInfoFormDataRow = data;
                let category=data.prefix+data.categoryCode;
                data.categoryCode=undefined;
                data.categoryCode=category;
                this.props.store.CostAdd(this.DetailAddInfoFormDataRow,this.id,this.page.pageNum,this.page.pageSize);
                this.props.store.CostTotalCount({pid:this.id});
                this.setState({
                    visibleAdd: false,
                });
            }
        });
    };
    showModalEdit = (id) => {
        this.props.store.clearData();
        this.detailId = id;
        this.props.store.CostSelectDetailByKey({id:id});
        this.setState({
            visibleEdit: true,
            visibleEditKey:this.state.visibleEditKey-1
        });

    };
    handleOkEdit = () => {
        this.DetailEditInfoForm.validateFields((err,data)=>{
            if(!err){
                this.DetailEditInfoFormDataRow = data;
                data.id = this.detailId;
                this.props.store.CostEdit(this.DetailEditInfoFormDataRow,this.id);
                this.setState({
                    visibleEdit: false,

                });
            }
        });
    };
    handleCancel = (e) => {
        this.setState({
            visibleSee: false,
            visibleAdd: false,
            visibleEdit: false,
        });

    };
    render(){
        let {style} = Css;
        let infoCost = this.props.store.CostDetail;
        let infoDetail = this.props.store.CostDetailTable;
        let infoDetailByKey = this.props.store.CostDetailByKeyTable;
        const {getFieldDecorator} = this.props.form;
        let formItemLayout = {
            labelCol: {
                xs: { span: 24 },
                sm: { span: 7 },
            },
            wrapperCol: {
                xs: { span: 24 },
                sm: { span: 14 },
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
        return(
            <div>
                <Breadcrumb separator=">" className="breadcrumb">
                    <Breadcrumb.Item href="#/Frame/Settlement/myHome">首页</Breadcrumb.Item>
                    <Breadcrumb.Item href="#/Frame/Settlement/CostManageList">费用管理</Breadcrumb.Item>
                    <Breadcrumb.Item>查看费用详情</Breadcrumb.Item>
                </Breadcrumb>
                <div style={{margin:'0px 10px'}}>
                <div style={style.FormStyle}>
                    <Form style={style.FormStyle}>
                        <div style={{height:20,borderBottom:"1px solid #ccc"}}></div>
                        <p style={style.hFormStyle}>&nbsp;&nbsp;<Icon type="book" /> 查看费用&nbsp;&nbsp;</p>
                        <Row style={{marginTop:30}}>
                            <Col span="8">
                                <FormItem {...formItemLayout}  label="费用类别编号：" >
                                    {getFieldDecorator('categoryCode', {
                                        initialValue:infoCost.categoryCode,
                                    })(<Input disabled/>)}
                                </FormItem>
                            </Col>
                            <Col span="8">
                                <FormItem {...formItemLayout}  label="费用类别名称：" >
                                    {getFieldDecorator('categoryName', {
                                        initialValue:infoCost.categoryName,
                                    })(<Input disabled/>)}
                                </FormItem>
                            </Col>
                        </Row>
                        <Row>
                            <Col span="14">
                                <FormItem {...formItemLayout1}  label="备注信息" >
                                    {getFieldDecorator('note', {
                                        rules: [{ message: '备注信息不能超过200字！',max:200 }],
                                        initialValue:infoCost.note,
                                    })(<Input type="textarea" rows={7} disabled/>)}
                                </FormItem>
                            </Col>
                        </Row>
                    </Form>
                </div>
                <div style={style.FormStyle}>
                    <div style={{height:20,borderBottom:"1px solid #ccc"}}></div>
                    <p style={style.hFormStyle}>&nbsp;&nbsp;<Icon type="book" /> 费用明细&nbsp;&nbsp;</p>
                    <div style={{marginTop:"25px"}}>
                        <Row style={style.ListTableTopRow}>
                            <Col span="4">序号</Col>
                            {/*<Col span="4">收支类别</Col>*/}
                            <Col span="5">费用明细编号</Col>
                            <Col span="5">费用明细名称</Col>
                            <Col span="5">备注</Col>
                            <Col span="5">操作</Col>
                        </Row>
                        {
                            infoDetail.map((data,index)=>{
                                return (
                                    <Row className="TranStyle2" key={index}>
                                        <Col span="4">{index+1}</Col>
                                        {/*<Col span="4">{inout[data.inout]}</Col>*/}
                                        <Col span="5">{data.categoryCode}</Col>
                                        <Col span="5" className="colHidden">{data.categoryName}</Col>
                                        <Col span="5">
                                            <Tooltip placement="top" title={data.note} arrowPointAtCenter>
                                                <span style={{cursor:"pointer"}}>查看备注</span>
                                            </Tooltip>
                                        </Col>
                                        <Col span="5">
                                            <a onClick={this.showModalSee.bind(this,data.id)}><i className="iconfont icon-chakan" /></a><span className="ant-divider" />
                                            <a onClick={this.showModalEdit.bind(this,data.id)}><i className="iconfont icon-bianji2" /></a>
                                        </Col>
                                    </Row>
                                )
                            })
                        }
                        <Pagination style={style.Pagination} current={this.page.pageNum} pageSize={this.page.pageSize} total={this.props.store.totalCount} onChange={this.changePage.bind(this)}/>
                    </div>
                </div>
                <Modal
                    title="查看费用明细"
                    visible={this.state.visibleSee}
                    footer={null}
                    onCancel={this.handleCancel.bind(this)}
                >
                    <Row style={{lineHeight:"30px"}}>
                        {/*<Col span="8">
                            <span className="spanTitle">收入/支出：</span>
                            <span className="spanStyle">{inout[infoDetailByKey.inout]}</span>
                        </Col>*/}
                        <Col span="8">
                            <span className="spanTitle">费用明细编号：</span>
                            <span className="spanStyle">{infoDetailByKey.categoryCode}</span>
                        </Col>
                        <Col span="16">
                            <span className="spanTitle">费用明细名称：</span>
                            <span className="spanStyle">{infoDetailByKey.categoryName}</span>
                        </Col>
                        <Col span="24">
                            <span className="spanTitle">备注：</span>
                            <span className="spanStyle">{infoDetailByKey.note}</span>
                        </Col>
                    </Row>
                </Modal>
                <Modal
                    title="新增费用明细"
                    visible={this.state.visibleAdd}
                    onOk={this.handleOkAdd}
                    onCancel={this.handleCancel}
                    width="1050px"
                    key={this.state.visibleAddKey}

                >
                    <DetailAddInfoForm
                        store = {this.props.store.CostDetail}
                        id = {this.id}
                        getDetailAddInfoForm = {this.getDetailAddInfoForm.bind(this)}
                        AccountOnlyOneCode = {this.props.store.AccountOnlyOneCode.bind(this)}
                        AccountOnlyOneName = {this.props.store.AccountOnlyOneName.bind(this)}
                    />
                </Modal>
                <Modal
                    title="编辑费用明细"
                    visible={this.state.visibleEdit}
                    onOk={this.handleOkEdit}
                    onCancel={this.handleCancel}
                    width="800px"
                    key={this.state.visibleEditKey}
                >
                    <DetailEditInfoForm
                        store = {this.props.store.CostDetailByKeyTable}
                        id = {this.id}
                        getDetailEditInfoForm = {this.getDetailEditInfoForm.bind(this)}
                        AccountOnlyOneCode = {this.props.store.AccountOnlyOneCode.bind(this)}
                        AccountOnlyOneName = {this.props.store.AccountOnlyOneName.bind(this)}
                    />
                </Modal>
                </div>
                <div style={style.EmptyRow}></div>
                <Row style={style.ManagerBottomRow}>
                    <Col span={21} style={{textAlign:"center"}}>
                        <Button type="primary" className="btn" onClick={()=>{window.location.hash=`Frame/Settlement/CostManageEdit/${this.id}`}}>编辑</Button>
                        <Button type="primary" className="btn" onClick={this.showModalAdd.bind(this)}>添加费用明细</Button>
                        <Button type="default" className="btn" onClick={()=>{window.location.hash="Frame/Settlement/CostManageList"}}>返回</Button>
                    </Col>
                </Row>
            </div>
        )
    }
}
const CostDetailInfoForm=Form.create()(CostDetailComponent);

export default CostDetailInfoForm;