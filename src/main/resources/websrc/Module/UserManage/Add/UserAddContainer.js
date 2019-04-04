import React, {Component} from 'react';
import { observer } from "mobx-react";
import { Button , Col , Row ,Breadcrumb} from 'antd';
import UserAddInfoForm from "./UserAddInfoForm";
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
                <Breadcrumb separator=">" className="breadcrumb">
                    <Breadcrumb.Item href="#/Frame/myHome">首页</Breadcrumb.Item>
                    <Breadcrumb.Item href="">用户管理</Breadcrumb.Item>
                    <Breadcrumb.Item>新增用户</Breadcrumb.Item>
                </Breadcrumb>
                <UserAddInfoForm />
                {/*<Row style={style.EmptyRow}></Row>*/}
                <Row style={style.ManagerBottomRow}>
                    <Col span={10}>
                        <Button type="primary" style={style.SubmitBtn}>保存</Button>
                    </Col>
                    <Col span={14}>
                        <Button type="default" style={style.CancelBtn} onClick={()=>{window.location.hash="Frame/UserManageList"}}>返回</Button>
                    </Col>
                </Row>
            </div>
        )
    }
}