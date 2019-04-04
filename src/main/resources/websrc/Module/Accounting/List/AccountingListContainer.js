import React, {Component} from 'react';
import { observer } from "mobx-react";
import Css from "../AccountingStyle";
import { Icon , Col , Row , Checkbox,Modal,Pagination ,Breadcrumb,notification,Tooltip,Table } from 'antd';
import AccountingListForm from "./AccountingListForm";
import AccountingDetail from "./AccountingDetail";
import RefNoInfo from "./RefNoInfo";
const confirm = Modal.confirm;

@observer
export default class AccountingListContainer extends Component
{
    constructor(props){
        super(props);
        this.state= {
            visible: false,
            visibleRefNo: false,
            pagination: false,
        }
        this.accountids=[];
        const {pageSize,condition,current} = this.props.store;
        props.store.searchAccountObj({});
        props.store.getCostTree();
        props.store.pageByQueryAccount({condition,current,pageSize});
        props.store.AccountTotalCount({condition});
        props.store.businessType();
    }
    handleOnChange(event)
    {
        if(event.target.checked)
        {
            this.accountids.push({
                value:event.target.value,
                index:event.target.content,
            })
        }
        else
        {
            this.accountids.map((account,accountIndex)=>{

                if(account.index == event.target.content)
                {
                    this.accountids.splice(accountIndex, 1);
                }
            })
        }
    }
    showModalRefNo(refNo){
        this.setState({
            visibleRefNo:true
        })
        this.refNo = refNo
        this.props.store.BuildAccount({refNo:this.refNo});
    }
    handleCancelRefNo(){
        this.setState({
            visibleRefNo:false
        })
    }
    showModal = (id) =>{
        this.setState({
            visible:true
        })
        this.props.store.selectAccount(id);
    }
    handleCancel = () =>{
        this.setState({
            visible:false
        })
    }
    checked(){
        let dataTable=[];
        this.accountids.map((account,index)=>{
            if(account.value)
            {
                dataTable[index] = {id:account.value,status:3};
            }
            this.accountids = [];
        })
        if(dataTable.length>0)
        {
            const {condition,current,pageSize}=this.props.store;
            this.props.store.checkAccount(dataTable,condition,current,pageSize)
        }
    }
    handleCheck = (id) => {
        const {condition,current,pageSize}=this.props.store;
        this.props.store.checkAccount([{id:id,status:3}],condition,current,pageSize)
    }
    changePage(page){
        if(this.accountids.length>0){
            notification.open({
                message: '对不起，请先操作当前页内容！',
            })
        }else{
            let current=page;
            const {pageSize,condition} = this.props.store;
            this.props.store.pageByQueryAccount({condition,current,pageSize});
        }

    }
    getListForm(form) {
        this.listForm = form;
    }
    search(){
        this.listForm.validateFields((err, data) =>
        {
            if(!err){
                this.data = data;
                this.data.itemId = (data.itemId)?(data.itemId).trim():undefined;
                this.data.refNo = (data.refNo)?(data.refNo).trim():undefined;
                let condition=this.data
                const {pageSize,current} = this.props.store;
                this.props.store.pageByQueryAccount({condition,current,pageSize,restCurrent:true});
                this.props.store.AccountTotalCount({condition});
            }
        })
    }
    delete=(id)=>{
        confirm
        ({
            title: '确定要删除该明细吗？',
            onOk:()=>{
                const {condition,current,pageSize}=this.props.store;
                this.props.store.deleteAccount(id,condition,current,pageSize);
            },
            onCancel(){}
        })
    }
    goTo=(url,arg)=>{
        this.props.addTab(url,arg);
    }
    render(){
        let {style} = Css;
        let store = this.props.store;
        const {current,pageSize,totalCount}=this.props.store;
        const columns = [
            {
                title: '',
                dataIndex: '',
                key: '',
                render: (text, record,index) => (
                    <Checkbox disabled={(record.status=="1"||record.status=="2")?false:true} onChange={this.handleOnChange.bind(this)} content={index} value={record.id.toString()} />
                )
            }, {
                title: '明细编号',
                dataIndex: 'itemId',
                key: 'itemId',
            }, {
                title: '费用明细',
                dataIndex: 'categoryLevel2Name',
                key: 'categoryLevel2Name',
            },{
                title: '结算对象',
                dataIndex: 'settlementObjectName',
                key: 'settlementObjectName',
            },{
                title: '业务类型',
                dataIndex: 'businessType',
                key: 'businessType',
            }, {
                title: '业务编号',
                dataIndex: 'refNo',
                key: 'refNo',
                render: (text, record,index) => (
                    <span onClick={this.showModalRefNo.bind(this,record.refNo)} style={{cursor:"pointer"}}><a>{record.refNo}</a></span>
                )
            },{
                title: '收支',
                dataIndex: 'inout',
                key: 'inout',
                render:(text,record) =>(
                    <span>
                        {(record.inout==0)?"支出":(record.inout==1)?"收入":""}
                    </span>
                )
            },{
                title: '交易金额',
                dataIndex: 'amount',
                key: 'amount',
                render: (text, record) => (
                    <span>{record.amount.toFixed(2)}</span>
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
                    <span>

                        {(record.status == "0") ? "失效/删除" :
                            (record.status == "1") ? "新增" :
                                (record.status == "2") ? "已修改" :
                                    (record.status == "3") ? "已审核" :
                                        (record.status == "4") ? "已生成账单" :
                                            (record.status == "5") ? "已开票" :
                                                (record.status == "6") ? "已结款" : null
                        }
                    </span>
                )
            },{
                title: '交易时间',
                dataIndex: 'tradeTime',
                key: 'tradeTime',
            },{
                title: '操作',
                key: 'action',
                render: (text, record) => (
                    <span>
                         <Tooltip placement="top" title="详情" arrowPointAtCenter>
                            <a onClick={this.showModal.bind(this,record.id)}><i className="iconfont icon-chakan" /></a><span className="ant-divider" />
                        </Tooltip>
                        {/*<Tooltip placement="top" title="编辑" arrowPointAtCenter>*/}
                            {/*<a onClick={()=>{window.location.hash=`Frame/accountingEdit/${record.id}/${record.inout}`}}><i className="iconfont icon-bianji2" /></a><span className="ant-divider" />*/}
                        {/*</Tooltip>*/}
                        <Tooltip placement="top" title="编辑" arrowPointAtCenter>
                            <a onClick={this.goTo.bind(this,"/Frame/accountingEdit",`${record.id}/${record.inout}`)}><i className="iconfont icon-bianji2" /></a><span className="ant-divider" />
                        </Tooltip>
                        <Tooltip placement="top" title="删除" arrowPointAtCenter>
                            <a onClick={this.delete.bind(this,record.id)}><i className="iconfont icon-shanchu" /></a>
                        </Tooltip>
                    </span>
                ),
            }
        ];

        return(
            <div>
                <Breadcrumb separator=">" className="breadcrumb">
                    <Breadcrumb.Item href="#/Frame/myHome">首页</Breadcrumb.Item>
                    <Breadcrumb.Item>记账管理</Breadcrumb.Item>
                </Breadcrumb>
                <div style={{margin:"0 10px 0"}}>
                    <AccountingListForm
                        postForm={this.getListForm.bind(this)}
                        search={this.search.bind(this)}
                        checked={this.checked.bind(this)}
                        accountObj={store.accountObjList}
                        costTree={[...store.costTreeData]}
                        accountids={this.accountids}
                        businessTypeDataTable={store.businessTypeDataTable}
                        handleAddTab={this.props.addTab}
                        condition={store.condition}
                    />
                    <div style={style.ListTable}>
                        <Table columns={columns} rowKey={record => record.id} dataSource={[...store.accountDataTable]} pagination={this.state.pagination} size="middle"/>
                        <Modal
                            title={"业务编号："+store.refNo}
                            visible={this.state.visibleRefNo}
                            footer={null}
                            onCancel={this.handleCancelRefNo.bind(this)}
                            width={1000}
                        >
                            <RefNoInfo modalDataTable={store.modalDataTable} refNo={store.refNo} money={store.money}/>
                        </Modal>
                        <Modal
                            title="详情信息"
                            visible={this.state.visible}
                            footer={null}
                            onCancel={this.handleCancel}
                        >
                            <AccountingDetail
                                account={store.accountDataRow}
                                check={this.handleCheck.bind(this)}
                                onCancel={this.handleCancel}
                                attachment={store.attachment}
                                amount={store.amount}
                            />
                        </Modal>

                    </div>
                </div>
                <Pagination  style={style.Pagination} current={current} pageSize={pageSize} total={totalCount} onChange={this.changePage.bind(this)}/>
            </div>
        )
    }
}