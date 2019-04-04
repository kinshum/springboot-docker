import React, {Component} from 'react';
import { observer } from "mobx-react";
import {Row,Col,Icon,Button,Modal,Pagination,Select,Input,Breadcrumb,Form,Tooltip,Table } from 'antd';
import Css from "../BusinessTypeStyle";
import BusinessTypeSearchInfoForm from "./BusinessTypeSearchInfoForm"
import BusinessTypeAddInfoForm from "./BusinessTypeAddInfoForm"
import BusinessTypeEditInfoForm from "./BusinessTypeEditInfoForm"
const confirm = Modal.confirm;
const FormItem = Form.Item;
import * as cows from "../../Limits/Permission";

@observer
class BusinessTypeListComponent extends Component
{
    constructor(props){
        super(props);
        const {condition,current,pageSize}=props.store;
        props.store.BusinessTypeQuery({condition,current,pageSize});
        props.store.BusinessTotalCount({condition});
        this.state = {
            visibleSee: false,
            visibleAdd: false,
            visibleEdit: false,
            visibleAddKey:0,
            visibleEditKey:1,
            pagination: false,
        };
    }
    changePage(page){
        const current=page;
        const {condition,pageSize}=this.props.store;
        this.props.store.BusinessTypeQuery({condition,current,pageSize});
    }
    getInfoForm(form){
        this.InfoForm = form;
    }
    search(){
        let condition;
        this.InfoForm.validateFields((err,data)=>{
            if(!err){
                condition = data;
                condition.businessTypeName = (data.businessTypeName)?(data.businessTypeName).trim():undefined;
                const {current,pageSize}=this.props.store;
                this.props.store.BusinessTypeQuery({condition,current,pageSize});
                this.props.store.BusinessTotalCount({condition});
            }
        })
    }
    getBusinessAddInfoForm(form){
        this.businessAddInfoForm = form;
    }
    showModalAdd = () => {
        this.setState({
            visibleAdd: true,
            visibleAddKey:this.state.visibleAddKey+1
        });
    };
    handleOkAdd = (e) => {
        this.businessAddInfoForm.validateFields((err,data)=>{
             if(!err){
                 this.businessAddInfoFormDataRow = data;
                 this.props.store.BusinessTypeAdd(this.businessAddInfoFormDataRow,this.data,this.page);
                 this.setState({
                    visibleAdd: false,
                 });
             }
         });
    };
    showModalSee = (id) => {
        this.setState({
            visibleSee: true,
        });
        this.props.store.BusinessTypeSelectByKey({id:id});
    };
    handleOkSee = (e) => {
        this.setState({
            visibleSee: false,
        });
    };
    showModalEdit = (id) => {
        /*this.props.store.clearData();*/
        this.props.store.BusinessTypeSelectByKey({id:id});
        this.id = id;
        this.setState({
            visibleEdit: true,
            visibleEditKey:this.state.visibleEditKey+1
        });
    };
    getBusinessEditInfoForm(form){
        this.businessEditInfoForm = form;
    }

    //编辑
    handleOkEdit = () => {
        this.businessEditInfoForm.validateFields((err,data)=>{
            if(!err){
                this.businessEditInfoFormDataRow = data;
                console.log(this.businessEditInfoFormDataRow);
                data.id = this.id;
                this.props.store.BusinessTypeEdit(this.businessEditInfoFormDataRow,this.data,this.page !=null ? this.page.pageNum : 1, this.page != null ? this.page.pageSize : 10);
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
    handleDel(id){
        confirm
        ({
            title: '确定要删除业务类型吗？',
            onOk:()=>{
                this.props.store.BusinessTypeDel({id:id},this.data, this.page != null ? this.page.pageNum : 1, this.page !=null ? this.page : 10);
            },
            onCancel(){}
        })
    }
    render(){
        let {style}=Css;
        const {condition,current,totalCount,pageSize}=this.props.store;
        const {getFieldDecorator} = this.props.form;
        let formItemLayout = {
            labelCol: {
                xs: { span: 24 },
                sm: { span: 8 },
            },
            wrapperCol: {
                xs: { span: 24 },
                sm: { span: 12 },
            },
        };
        const columns = [{
            title: '序号',
            dataIndex: '',
            key: '',
            render: (text, record,index) => (
                <span>{index+1}</span>
            )
        }, {
            title: '业务类型名称',
            dataIndex: 'businessTypeName',
            key: 'businessTypeName',
        }, {
            title: '操作',
            dataIndex: 'action',
            key: 'action',
            render: (text, record) => (
                <span>
                    <Tooltip placement="top" title="详情" arrowPointAtCenter>
                        <a onClick={this.showModalSee.bind(this,record.id)}><i className="iconfont icon-chakan" /></a><span className="ant-divider" />
                    </Tooltip>
                    {
                        (!cows.BusinessTypeEditAction)?"":
                            <Tooltip placement="top" title="编辑" arrowPointAtCenter>
                                <a onClick={this.showModalEdit.bind(this,record.id)}><i className="iconfont icon-bianji2" /></a><span className="ant-divider" />
                            </Tooltip>
                    }
                    {
                        (!cows.BusinessTypeDelAction)?"":
                            <Tooltip placement="top" title="删除" arrowPointAtCenter>
                                <a onClick={this.handleDel.bind(this,record.id)}><i className="iconfont icon-shanchu" /></a>
                            </Tooltip>
                    }
                </span>
            ),
        }];
        return(
            <div>
                <Breadcrumb separator=">" className="breadcrumb">
                    <Breadcrumb.Item href="#/Frame/myHome">首页</Breadcrumb.Item>
                    <Breadcrumb.Item>业务类型列表</Breadcrumb.Item>
                </Breadcrumb>
                <div style={{margin:'0px 10px'}}>
                <div style={{backgroundColor:"rgb(250, 250, 247)"}}>
                    <Row style={{padding:'10px 20px'}}>
                        <Col span="12">
                        {
                            (!cows.BusinessTypeAddAction)?"":
                             <Button type="primary" className="btn" style={{width:"150px"}} onClick={this.showModalAdd.bind(this)}><i className="iconfont icon-add" />&nbsp;新增业务类型</Button>
                        }
                        </Col>
                        <Col span="12" style={{textAlign:"right"}}>
                            <Button type="primary" className="btn" onClick={this.search.bind(this)}><i className="iconfont icon-search" />&nbsp;搜索</Button>
                        </Col>
                    </Row>
                    <div style={{borderBottom:"1px solid #ccc"}}></div>
                    <BusinessTypeSearchInfoForm
                        searchData = {this.data}
                        postForm = {this.getInfoForm.bind(this)}
                        condition={condition}
                    />
                </div>
                <div style={style.ListTable}>
                    <Table columns={columns} rowKey={record => record.id} dataSource={[...this.props.store.BusinessTypeDataTable]} pagination={this.state.pagination} size="middle"/>
                </div>
                <Modal
                    title="添加业务类型"
                    visible={this.state.visibleAdd}
                    onOk={this.handleOkAdd}
                    onCancel={this.handleCancel.bind(this)}
                    key={this.state.visibleAddKey}
                >
                    <BusinessTypeAddInfoForm
                        businessAddInfoForm = {this.getBusinessAddInfoForm.bind(this)}
                        BusinessOnlyOne = {this.props.store.BusinessOnlyOne.bind(this)}
                    />
                </Modal>
                <Modal
                    title="查看业务类型"
                    visible={this.state.visibleSee}
                    onOk={this.handleOkSee}
                    onCancel={this.handleCancel.bind(this)}
                    footer={null}
                >
                    <FormItem {...formItemLayout}  label="业务类型名称：" >
                        {getFieldDecorator('businessTypeName', {
                            initialValue:this.props.store.BusinessTypeByKeyDataRow.businessTypeName
                        })(<Input disabled/>)}
                    </FormItem>
                </Modal>
                <Modal
                    title="编辑业务类型1"
                    visible={this.state.visibleEdit}
                    onOk={this.handleOkEdit}
                    onCancel={this.handleCancel.bind(this)}
                    key={this.state.visibleEditKey}
                >
                    <BusinessTypeEditInfoForm
                        store = {this.props.store.BusinessTypeByKeyDataRow}
                        businessEditInfoForm = {this.getBusinessEditInfoForm.bind(this)}
                        BusinessOnlyOne = {this.props.store.BusinessOnlyOne.bind(this)}
                    />
                </Modal>
                </div>
                <Pagination style={style.Pagination} current={current} pageSize={pageSize} total={totalCount} onChange={this.changePage.bind(this)}/>
            </div>
        )
    }
}
const BusinessTypeListInfoForm=Form.create()(BusinessTypeListComponent);

export default BusinessTypeListInfoForm;