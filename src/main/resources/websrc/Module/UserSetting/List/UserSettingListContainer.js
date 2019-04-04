import React, {Component} from 'react';
import { observer } from "mobx-react";
import { Button , Col , Row ,Breadcrumb,Table,Tooltip,Icon,Pagination,Modal} from 'antd';
import Css from "../UserSettingStyle";
import UserListRoleForm from "./UserListRoleForm";

@observer
export default class UserAddContainer extends Component
{
    constructor(props){
        super(props);
        this.page = {pageNum: 1, pageSize: 10};
        this.data = {};
        props.store.selectUsers(this.data,this.page);
        props.store.userTotalCount(this.data);
        props.store.getMyOrgRole({});
        this.state={
            visibleRole:false,
            visibleRoleKey:0
        }
    }
    handleShowRole(id){
        this.props.store.findRoleByUid({userId:id})
        this.setState({
            visibleRole:true,
            visibleRoleKey:this.state.visibleRoleKey+1
        })
        this.userId =id;
    }
    handleOkRole(){
        this.roleForm.validateFields((err,data) =>{
            if(!err){
                this.roleFormDataRow = data;
                this.roleFormDataRow.userId = this.userId;
                this.props.store.addUserRole(this.roleFormDataRow);
                this.setState({
                    visibleRole:false
                })
            }
        });

    }
    handleCancel(){
        this.setState({
            visibleRole:false
        })
    }
    changePage(page){
        this.page.pageNum = page;
        this.props.store.selectUsers(this.data,this.page);
        this.props.store.userTotalCount(this.data);
    }
    getForm(form){
        this.roleForm = form;
    };
    render(){
        let {style} = Css;
        let store = this.props.store;
        const columns = [
            {title: '用户名', dataIndex: 'userName', key: 'userName'},
            {title: '电子邮箱', dataIndex: 'email', key: 'email'},
            {title: '操作', key: 'action', render: (text, item) => (
                <div>

                    <Tooltip placement="top" title="角色" arrowPointAtCenter>
                        <a onClick={()=>{this.handleShowRole(item.id)}}><Icon type="usergroup-add" style={{fontSize:19}}/></a>
                    </Tooltip>
                </div>
            )}
        ];
        return(
            <div>
                <Breadcrumb separator=">" className="breadcrumb">
                    <Breadcrumb.Item href="#/Frame/Settlement/myHome">首页</Breadcrumb.Item>
                    <Breadcrumb.Item href="">用户管理</Breadcrumb.Item>
                    <Breadcrumb.Item>客户授权</Breadcrumb.Item>
                </Breadcrumb>
                <Table columns={columns} dataSource={[...store.userDataTable]} pagination={false} rowKey={item => item.id} size="middle" className="pd" style={style.FormStyle}/>
                <Pagination style={style.Pagination} current={this.page.pageNum} pageSize={this.page.pageSize} total={store.totalCount} onChange={this.changePage.bind(this)}/>
                <Modal
                    title="设置角色"
                    visible={this.state.visibleRole}
                    onOk={this.handleOkRole.bind(this)}
                    onCancel={this.handleCancel.bind(this)}
                    key={this.state.visibleRoleKey}
                >
                    <UserListRoleForm postForm={this.getForm.bind(this)} roleDataRow={store.roleDataRow} roleDataTable={store.roleDataTable}/>
                </Modal>
            </div>
        )
    }
}