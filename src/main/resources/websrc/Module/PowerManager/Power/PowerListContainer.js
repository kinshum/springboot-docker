import React, {Component} from 'react';
import { observer } from "mobx-react";
import { Breadcrumb ,Table ,Icon ,Checkbox ,Row ,Col,Button } from 'antd';
import Css from '../PowerManagerStyle'


@observer
export default class PowerListContainer extends Component {
    constructor(props){
        super(props);
        this.roleId = props.match.params.roleId;
        props.store.getPowerList({},this.roleId);
        this.powerDataTable = [];
    }
    componentWillReceiveProps=(nextprops)=>{
        nextprops.store.getPowerList({},nextprops.match.params.roleId);
    }
    handleSubmit(){
        this.props.store.updatePower(this.powerDataTable);
    };
    handlePowerChange(e){
        if(e.target.checked){
            this.powerDataTable.push({
                roleId:this.roleId,
                permissionId:e.target.value,
            })
        }else{
            this.powerDataTable.map((power,index)=>{
                if(power.permissionId == e.target.value){
                    this.powerDataTable.splice(index,1)
                }
            })
        }
    };
    render() {
        let store = this.props.store;
        let {style} = Css;
        this.powerDataTable = [...store.roleSelectDataTable];
        return (
            <div>
                <Breadcrumb separator=">" className="breadcrumb">
                    <Breadcrumb.Item href="#/Frame/User/myHome">首页</Breadcrumb.Item>
                    <Breadcrumb.Item href="#/Frame/User/powerRole">角色列表</Breadcrumb.Item>
                    <Breadcrumb.Item>权限管理</Breadcrumb.Item>
                </Breadcrumb>
                <div style={{backgroundColor:"#fafaf7",margin:"0px 10px",padding:10}}>
                    <Row style={{lineHeight:"40px",backgroundColor:"#f7f7f7",padding:"0 10px"}}>
                        <Col span="4">模块</Col>
                        <Col span="20">权限</Col>
                    </Row>
                    {store.roleDataTable.map((dataRow,index)=>{
                        return(
                            <Row key={dataRow.Id} style={{lineHeight:"40px",padding:"0 10px",borderBottom:"1px #ccc solid"}}>
                                <Col span="4"><Checkbox value={dataRow.Id} defaultChecked={dataRow.checked} onChange={this.handlePowerChange.bind(this)}> {dataRow.Name}</Checkbox></Col>
                                <Col span="20">
                                    {(dataRow.children)?dataRow.children.map((power,i)=>{
                                        return(
                                            <span key={power.Id}><Checkbox value={power.Id} defaultChecked={power.checked} onChange={this.handlePowerChange.bind(this)}> {power.Name}</Checkbox></span>
                                        )
                                    }):[]}
                                </Col>
                            </Row>
                        )
                    })}
                </div>
                <Row style={style.AddBottom}>
                    <Col span={24}>
                        <Button type="primary" className="btn" onClick={this.handleSubmit.bind(this)}>保存</Button>
                        <Button type="default" className="btn" onClick={()=>{window.location.hash="Frame/Settlement/powerRole"}}>返回</Button>
                    </Col>
                </Row>
            </div>

        )
    }
}