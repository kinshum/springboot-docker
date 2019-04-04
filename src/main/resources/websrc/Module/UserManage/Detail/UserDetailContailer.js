import React, {Component} from 'react';
import { observer } from "mobx-react";
import { Button , Col , Row ,Breadcrumb} from 'antd';
import Css from "../UserStyle";

@observer
export default class UserAddContainer extends Component
{
    constructor(props){
        super(props);
        this.page = {pageNum: 1, pageSize: 10};
        this.data = {};
    }
    render(){
        let {style} = Css;
        return(
            <div>
                <Breadcrumb separator=">" style={{lineHeight:'35px'}}>
                    <Breadcrumb.Item href="#/Frame/myHome">首页</Breadcrumb.Item>
                    <Breadcrumb.Item href="">用户管理</Breadcrumb.Item>
                    <Breadcrumb.Item>查看用户</Breadcrumb.Item>
                </Breadcrumb>
                <div style={{margin:'0px 10px'}}>
                <div  style={style.DetailContent}>
                    <Row style={style.DetailRow}>
                        <Col span="8">
                            <span>当前账套：</span>
                            <span></span>
                        </Col>
                        <Col span="8">
                            <span>父级结算对象：</span>
                            <span></span>
                        </Col>
                        <Col span="8">
                            <span>结算对象名称：</span>
                            <span></span>
                        </Col>
                    </Row>
                    <Row style={style.DetailRow}>
                        <Col span="8">
                            <span>公司名称：</span>
                            <span></span>
                        </Col>
                        <Col span="8">
                            <span>公司地址：</span>
                            <span></span>
                        </Col>
                        <Col span="8">
                            <span>联系人：</span>
                            <span></span>
                        </Col>
                    </Row>
                    <Row style={style.DetailRow}>
                        <Col span="8">
                            <span>联系人电话：</span>
                            <span></span>
                        </Col>
                        <Col span="8">
                            <span>开户银行：</span>
                            <span></span>
                        </Col>
                        <Col span="8">
                            <span>开户人姓名：</span>
                            <span></span>
                        </Col>
                    </Row>
                    <Row style={style.DetailRow}>
                        <Col span="8">
                            <span>银行卡号：</span>
                            <span></span>
                        </Col>
                        <Col span="8">
                            <span>开户地址：</span>
                            <span></span>
                        </Col>
                        <Col span="8">
                            <span>结算方式：</span>
                            <span></span>
                        </Col>
                    </Row>
                    <Row style={style.DetailRow}>
                        <Col span="8">
                            <span>备注信息</span>
                            <span></span>
                        </Col>
                    </Row>
                </div>
                </div>
                <Row style={style.ManagerBottomRow}>
                    <Col span={10}>
                        <Button type="primary" style={style.SubmitBtn}>编辑</Button>
                    </Col>
                    <Col span={14}>
                        <Button type="default" style={style.CancelBtn} onClick={()=>{window.location.hash="Frame/UserList"}}>返回</Button>
                    </Col>
                </Row>
            </div>
        )
    }
}