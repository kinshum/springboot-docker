import React, {Component} from 'react';
import {Route,Link,withRouter} from 'react-router-dom';
import { inject,observer } from "mobx-react";
import LazyRoute from "lazy-route";
import { Layout,Menu,Icon,Item} from 'antd';
import FrameHeader from './FrameHeader';
import '../../Style/Common.scss';
import {breadcrumbNameMap} from './../../Common/breadcrumbNameMap'
import Tabs from './Tabs';
const {  Sider,Content } = Layout;
const { SubMenu } = Menu;

@inject("store") @observer
class FrameContainer extends Component
{
    constructor(props) {
        super(props);
        props.store.FrameStore.getUser();
        props.store.FrameStore.getService();
        props.store.FrameStore.accountSelect();
    }
    state = {
        collapsed: false,
        activeKey:'',
        tabs:[{
            key:'/Frame/myHome',
            title:'结算首页',
            closable:false
        }]
    };
    onCollapse = (collapsed) => {
        this.setState({ collapsed });
    }
    handleAddMenuTab = (item)=>{
        const route="/Frame/"+item.key;
        let inTabs=true;

        this.state.tabs.map((tab)=>{
            tab.key == route? inTabs = false:'';
        });

        inTabs ? this.state.tabs.push({
            key:route,
            title:breadcrumbNameMap[route],
            closable:true
        }) :'';

        this.state.activeKey = route;

        this.props.history.push({
            pathname:route,
        })

    }
    handleToggle=(activeKey)=>{
        this.state.activeKey=activeKey;
        this.props.history.replace({
            pathname:activeKey
        })
    }
    handleOnEdit=(targetKey, action)=>{
        this[action](targetKey);
    }
    remove(targetKey){
        let lastindex="";
        this.state.tabs.map((tab,index)=>{
            if(tab.key==targetKey){
                lastindex=index-1
            }
        })
        this.state.tabs = this.state.tabs.filter(tab => tab.key !== targetKey);
        this.state.activeKey=this.state.tabs[lastindex].key;
        this.props.history.replace({
            pathname:this.state.tabs[lastindex].key
        })
    }
    handleAddTab=(route,first,second="")=>{
        const newRoute=route+"/"+first+second;
        let inTabs=true;
        this.state.tabs.map((tab,index)=>{
            tab.key == newRoute ? inTabs = false : null;
        })
        inTabs?this.state.tabs.push({
            key:newRoute,
            title:breadcrumbNameMap[route]+first,
            closable:false
        }):null
        this.state.activeKey = newRoute;
        this.props.history.push({
            pathname: newRoute
        })

    }
    render()
    {
        let minHeight = window.outerHeight;
        let {FrameStore} = this.props.store;
        FrameStore.userData;
        let defaultkey = [];
        let urlStr = document.location.hash;
        if( urlStr.indexOf('myHome')>0 ) defaultkey[0] = 'myHome';
        else if( urlStr.indexOf('accounting')>0 ) defaultkey[0] = 'accountingList';
        else if( urlStr.indexOf('PrepareBill')>0 ) defaultkey[0] = 'PrepareBillList';
        else if( urlStr.indexOf('Receipt')>0 ) defaultkey[0] = 'ReceiptList';
        else if( urlStr.indexOf('Payment')>0 ) defaultkey[0] = 'PaymentList';
        else if( urlStr.indexOf('Settlement')>0 ) defaultkey[0] = 'SettlementList';
        else if( urlStr.indexOf('CostManage')>0 ) defaultkey[0] = 'CostManageList';
        else if( urlStr.indexOf('BusinessType')>0 ) defaultkey[0] = 'BusinessTypeList';
        else if( urlStr.indexOf('PowerRole')>0 ) defaultkey[0] = 'PowerRole';
        else if( urlStr.indexOf('UserSetting')>0 ) defaultkey[0] = 'UserSetting';
        else defaultkey[0] = '1';

        return (
            <Layout style={{"minHeight":minHeight}}>
                <Sider
                    collapsible
                    collapsed={this.state.collapsed}
                    onCollapse={this.onCollapse}
                >
                    <div style={{"height": "55px","background":"#50ade3 url(/image/logo.png) no-repeat center",}} />
                    <Menu theme="dark" selectedKeys={defaultkey} mode="inline" onClick={this.handleAddMenuTab}>
                        <Menu.Item key="myHome" >
                            <Icon><i className="iconfont icon-shouye" /></Icon>
                            <span >我的首页</span>
                        </Menu.Item>
                        <Menu.Item key="accountingList" >
                            <Icon><i className="iconfont icon-bi" /></Icon>
                            <span >记账管理</span>
                        </Menu.Item>
                        <Menu.Item key="PrepareBillList" >
                            <Icon><i className="iconfont icon-wenben" /></Icon>
                            <span >账单管理</span>
                        </Menu.Item>
                        <Menu.Item key="ReceiptList" >
                            <Icon><i className="iconfont icon-shoukuan" /></Icon>
                            <span >收款管理</span>
                        </Menu.Item>
                        <Menu.Item key="PaymentList" >
                            <Icon><i className="iconfont icon-pay" /></Icon>
                            <span >付款管理</span>
                        </Menu.Item>
                        <Menu.Item key="PowerRole" >
                            <Icon><i className="iconfont icon-pay" /></Icon>
                            <span >权限管理</span>
                        </Menu.Item>
                        <Menu.Item key="UserSetting" >
                            <Icon><i className="iconfont icon-pay" /></Icon>
                            <span >用户授权</span>
                        </Menu.Item>
                        <SubMenu key="sub1" title={<span><Icon><i className="iconfont icon-jichuxinxi" /></Icon><span>基础信息</span></span>}>
                            <Menu.Item key="SettlementList">结算对象</Menu.Item>
                            <Menu.Item key="CostManageList">费用管理</Menu.Item>
                            <Menu.Item key="BusinessTypeList">业务类型</Menu.Item>
                        </SubMenu>
                    </Menu>
                </Sider>
                <Layout>
                    <div style={{ background: 'url(/image/bg.jpg) no-repeat center', padding: 0 }} >
                        <FrameHeader
                            store={FrameStore}
                            account = {FrameStore.accountData}
                            storelayOut = {this.props.store.FrameStore.layOut.bind(this)}
                        />

                    </div>
                    <Tabs
                        tabs={this.state.tabs}
                        activeKey = {this.state.activeKey}
                        onChange = {this.handleToggle}
                        onEdit = {this.handleOnEdit}
                        handleRedirect = {this.handleAddMenuTab}
                    />
                    <Content>
                        <Route path="/Frame/myHome" render={props => (
                            <LazyRoute store={this.props.store.MyHomeStore} component={import("../MyHome/MyHomeContainer")} />
                        )}/>
                        <Route path="/Frame/PaymentList" render={props => (
                            <LazyRoute addTab={this.handleAddTab} store={this.props.store.PaymentListStore} component={import("../PaymentManage/List/PaymentManageContainer")} />
                        )}/>
                        <Route path="/Frame/PaymentDetail/:id" render={props => (
                            <LazyRoute {...props} store={this.props.store.PaymentDetailStore} component={import("../PaymentManage/Detail/PaymentDetailContainer")} />
                        )}/>
                        <Route path="/Frame/PrepareBillList" render={props => (
                            <LazyRoute addTab={this.handleAddTab} store={this.props.store.PrepareBillListStore} component={import("../PrepareBill/List/PrepareBillListContainer")} />
                        )}/>
                        <Route path="/Frame/PrepareBillDetail/:id" render={props => (
                            <LazyRoute {...props} store={this.props.store.PrepareBillDetailStore} component={import("../PrepareBill/Detail/PrepareBillDetailContainer")} />
                        )}/>
                        <Route path="/Frame/ReceiptList" render={props => (
                            <LazyRoute addTab={this.handleAddTab} store={this.props.store.ReceiptStore} component={import("../ReceiptManage/List/ReceiptManageContainer")} />
                        )}/>
                        <Route path="/Frame/ReceiptDetail/:id" render={props => (
                            <LazyRoute {...props} store={this.props.store.ReceiptDetailStore} component={import("../ReceiptManage/Detail/ReceiptDetailContainer")} />
                        )}/>
                        <Route path="/Frame/SettlementList" render={props => (
                            <LazyRoute  addTab={this.handleAddTab} store={this.props.store.SettlementListStore} component={import("../Settlement/List/SettlementListContainer")} />
                        )}/>
                        <Route path="/Frame/SettlementAdd" render={props => (
                            <LazyRoute store={this.props.store.SettlementAddStore} component={import("../Settlement/Add/SettlementAddContainer")} />
                        )}/>
                        <Route path="/Frame/SettlementDetail/:id" render={props => (
                            <LazyRoute {...props} store={this.props.store.SettlementDetailStore} component={import("../Settlement/Detail/SettlementDetailContainer")} />
                        )}/>
                        <Route path="/Frame/SettlementEdit/:id" render={props => (
                            <LazyRoute {...props} store={this.props.store.SettlementEditStore} component={import("../Settlement/Edit/SettlementEditContainer")} />
                        )}/>
                        <Route path="/Frame/CostManageList" render={props => (
                            <LazyRoute addTab={this.handleAddTab} store={this.props.store.CostManageListStore} component={import("../CostManage/List/CostListContainer")} />
                        )}/>
                        <Route path="/Frame/CostManageDetail/:id" render={props => (
                            <LazyRoute {...props} store={this.props.store.CostManageDetailStore} component={import("../CostManage/Detail/CostDetailContainer")} />
                        )}/>
                        <Route path="/Frame/CostManageAdd" render={props => (
                            <LazyRoute store={this.props.store.CostManageAddStore} component={import("../CostManage/Add/CostAddContainer")} />
                        )}/>
                        <Route path="/Frame/CostManageEdit/:id" render={props => (
                            <LazyRoute {...props} store={this.props.store.CostManageEditStore} component={import("../CostManage/Edit/CostEditContainer")} />
                        )}/>
                        <Route path="/Frame/UserManageList" render={props => (
                            <LazyRoute addTab={this.handleAddTab} store={this.props.store.UserManageListStore} component={import("../UserManage/List/UserListContainer")} />
                        )}/>
                        <Route path="/Frame/UserManageAdd" render={props => (
                            <LazyRoute store={this.props.store.UserManageAddStore} component={import("../UserManage/Add/UserAddContainer")} />
                        )}/>
 						<Route path="/Frame/accountingList" render={props => (
                            <LazyRoute addTab={this.handleAddTab} store={this.props.store.AccountingListStore} component={import("../Accounting/List/AccountingListContainer")} />
                        )}/>
                        <Route path="/Frame/accountingAdd/:Type" render={props => (
                            <LazyRoute {...props} store={this.props.store.AccountingAddStore} component={import("../Accounting/Add/AccountingAddContainer")} />
                        )}/>
                        <Route path="/Frame/accountingEdit/:Id/:Inout" render={props => (
                            <LazyRoute {...props} store={this.props.store.AccountingEditStore} component={import("../Accounting/Edit/AccountingEditContainer")} />
                        )}/>
                        <Route path="/Frame/accountingBuild" render={props => (
                            <LazyRoute store={this.props.store.AccountingBuildStore} component={import("../Accounting/Build/AccountingBuildContainer")} />
                        )}/>
                        <Route path="/Frame/accountingQuick" render={props => (
                            <LazyRoute store={this.props.store.AccountingQuickStore} component={import("../Accounting/Quick/AccountingQuickContainer")} />
                        )}/>
                        <Route path="/Frame/BusinessTypeList" render={props => (
                            <LazyRoute addTab={this.handleAddTab} store={this.props.store.BusinessTypeListStore} component={import("../BusinessType/List/BusinessTypeListContainer")} />
                        )}/>
                        {/*2323*/}
                        <Route path="/Frame/PowerRole" render={props => (
                            <LazyRoute store={this.props.store.RoleListStore} addTab={this.handleAddTab} component={import("../PowerManager/Role/RoleListContainer")} />
                        )}/>
                        <Route path="/Frame/Power/:roleId" render={props => (
                            <LazyRoute {...props} store={this.props.store.PowerListStore} component={import("../PowerManager/Power/PowerListContainer")} />
                        )}/>
                        <Route path="/Frame/UserSetting" render={props => (
                            <LazyRoute store={this.props.store.UserSettingListStore} component={import("../UserSetting/List/UserSettingListContainer")} />
                        )}/>
                    </Content>
                </Layout>
            </Layout>
        )
    }
}
export default withRouter(FrameContainer);
