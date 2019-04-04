import React,{Component} from 'react';
import { Button,Row, Col,Dropdown ,Menu,Modal,Form,Select} from 'antd';
const FormItem = Form.Item;
const Option = Select.Option;
import {Link} from 'react-router-dom';
import ModifyForm from "./FrameModifyForm";
import Css from './FrameStyle';

export default class FrameHeader extends Component
{
    constructor(props) {
        super(props);
        this.state={
            visible: false,
            visibleKey:0
        }
    }
    getpasswordForm(form) {
        this.passwordForm = form;
    }
    showModal = () => {
        this.setState({
            visible: true,
            visibleKey:this.state.visibleKey+1
        });
    };
    handleOk = () => {
        this.passwordForm.validateFields((err, data) =>
        {
            if(!err) {
                this.passwordFormDataRow = data;
                this.props.store.updatePassword(this.passwordFormDataRow);
                this.setState({
                    visible: false,
                });
            }
        });
    };
    handleCancel = (e) => {
        this.setState({
            visible: false,
        });
    };
    outLogin(){
        this.props.storelayOut();
    };
    render()
    {
        let { style } = Css;
        let name = this.props.account.accountName;
        const formItemLayout = {
            labelCol: {
                xs: { span: 24 },
                sm: { span: 6 },
            },
            wrapperCol: {
                xs: { span: 24 },
                sm: { span: 16 },
            },
        };
        const menu = (
            <Menu>
                {/*<Menu.Item>
                    <Link to='/Frame/userInfo/detail'><span type="primary">个人档案</span></Link>
                </Menu.Item>*/}
                <Menu.Item>
                    <div type="primary" onClick={this.showModal}>修改密码</div>
                </Menu.Item>
                <Menu.Item>
                    <div type="primary" onClick={this.outLogin.bind(this)}>退出</div>
                </Menu.Item>
            </Menu>
        );
        return(
            <div>
                <Row style={{"height":"55px","lineHeight":"55px"}}>
                    <Col span={14} style={{textAlign:"center"}}>
                        <h2 style={style.frameTitleH2}>赤雁结算管理系统</h2>
                    </Col>
                    <Col span={6} style={{paddingTop:"8px"}}>
                        <Form>
                            <FormItem {...formItemLayout} label="账套：" className = "account">
                                <Select value={name} style={{ width: 150 }}>
                                    <Option value={name}>{name}</Option>
                                </Select>
                            </FormItem>
                        </Form>
                    </Col>
                    <Col span={4} style={{textAlign:"center"}}>
                        <Dropdown overlay={menu} placement="bottomLeft">
                            <Button size="large">{this.props.store.userData.userName}</Button>
                        </Dropdown>
                    </Col>
                </Row>
                <Modal
                    title="更改密码"
                    visible={this.state.visible}
                    onOk={this.handleOk}
                    onCancel={this.handleCancel}
                    key={this.state.visibleKey}
                >
                    <ModifyForm
                        passwordForm = {this.getpasswordForm.bind(this)}
                    />
                </Modal>
            </div>
        )
    }
}
