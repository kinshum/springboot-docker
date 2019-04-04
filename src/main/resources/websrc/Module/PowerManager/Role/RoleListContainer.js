import React, {Component} from 'react';
import { observer } from "mobx-react";
import { Breadcrumb ,Table ,Icon ,Tooltip,Modal,Button, Pagination} from 'antd';
import Css from '../PowerManagerStyle';
import RoleAddForm from "./RoleAddForm";
import RoleEditForm from "./RoleEditForm";
const confirm = Modal.confirm;



@observer
export default class RoleListContainer extends Component {
    constructor(props){
        super(props);
        const {condition,current,pageSize}=props.store;
        props.store.pageQueryRole({condition,current,pageSize});
        props.store.roleTotalCount({condition});
        this.state = {
            visibleAdd: false,
            visibleEdit: false,
            visibleAddKey:0,
            visibleEditKey:1,
        }
    }
    showModalAdd = () => {
        this.setState({
            visibleAdd: true,
            visibleAddKey:this.state.visibleAddKey+1
        });
    };
    showModalEdit = (id) =>{
        this.setState({
            visibleEdit: true,
            visibleEditKey:this.state.visibleEditKey+1
        });
        this.props.store.getRole(id);
    };
    handleCancel(){
        this.setState({
            visibleAdd: false,
            visibleEdit: false,
        });
    };
    changePage(page){
        let current=page
        const {condition,pageSize}=this.props.store;
        this.props.store.pageQueryRole({current,condition,pageSize});
    };
    handleOkAdd = () =>{
        this.roleAddForm.validateFields((err,data)=>{
            if(!err){
                this.roleAddFormDataRow = data;
                this.props.store.addRole(this.roleAddFormDataRow,{},this.page.pageNum,this.page.pageSize);
                this.setState({
                    visibleAdd: false,
                });
                this.roleAddForm.resetFields();
            }
        });

    };
    handleOkEdit = () =>{
        this.roleEditForm.validateFields((err,data)=>{
            if(!err){
                this.roleEditFormDataRow = data;
                this.props.store.modifyRole(this.roleEditFormDataRow,{},this.page.pageNum,this.page.pageSize);
                this.setState({
                    visibleEdit: false,
                });
            }
        });
    };
    delete(id){
        confirm
        ({
            title: '确定要删除该角色吗？',
            onOk:()=>{
                this.props.store.removeRole(id,{},this.page.pageNum,this.page.pageSize);
            },
            onCancel(){}
        })

    }
    getRoleAddForm=(form)=>{
        this.roleAddForm=form;
    };
    getRoleEditForm(form){
        this.roleEditForm = form;
    }
    goTo=(url,arg)=>{
        this.props.addTab(url,arg);
    }
    render() {
        let {style} = Css;
        let store = this.props.store;
        let {roleDataTable,roleDataRow,current,pageSize,totalCount}=this.props.store;
        const columns = [{
            title: '角色',
            dataIndex: 'name',
            key: 'name',
        }, {
            title: '操作',
            key: 'action',
            render: (text, record) => (
                <span>
                    <Tooltip placement="top" title="编辑" arrowPointAtCenter>
                        <a onClick={()=>{this.showModalEdit(record.id)}}><i className="iconfont icon-bianji2" /></a><span className="ant-divider" />
                    </Tooltip>
                    <Tooltip placement="top" title="删除" arrowPointAtCenter>
                        <a onClick={()=>{this.delete(record.id)}}><i className="iconfont icon-shanchu" /></a><span className="ant-divider" />
                    </Tooltip>
                    <Tooltip placement="top" title="权限设置" arrowPointAtCenter>
                        <a onClick={this.goTo.bind(this,"/Frame/Power",`${record.id}`)}><Icon type="lock" style={{fontSize:19}}/></a>
                    </Tooltip>
                </span>
            ),
        }];
        return (
            <div>
                <Breadcrumb separator=">" className="breadcrumb">
                    <Breadcrumb.Item href="#/Frame/User/myHome">首页</Breadcrumb.Item>
                    <Breadcrumb.Item>角色列表</Breadcrumb.Item>
                </Breadcrumb>
                <div style={style.ListBtn}>
                    <Button onClick={this.showModalAdd}>添加角色</Button>
                </div>
                <Table columns={columns} dataSource={[...roleDataTable]} rowKey={item => item.id} className="pd" style={style.ListTable}  pagination={false} size="middle"/>
                <Pagination style={style.Pagination} current={current} pageSize={pageSize} total={totalCount} onChange={this.changePage.bind(this)}/>
                <Modal
                    title="添加角色"
                    visible={this.state.visibleAdd}
                    onOk={this.handleOkAdd}
                    onCancel={this.handleCancel.bind(this)}
                    key={this.state.visibleAddKey}
                >
                    <RoleAddForm getRoleAddForm={this.getRoleAddForm.bind(this)}/>
                </Modal>
                <Modal
                    title="编辑角色"
                    visible={this.state.visibleEdit}
                    onOk={this.handleOkEdit}
                    onCancel={this.handleCancel.bind(this)}
                    key={this.state.visibleEditKey}
                >
                    <RoleEditForm getRoleEditForm={this.getRoleEditForm.bind(this)} roleDataRow={roleDataRow}/>
                </Modal>
            </div>
        )
    }
}
