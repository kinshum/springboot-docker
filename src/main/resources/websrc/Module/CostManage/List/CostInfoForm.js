import React, {Component} from 'react';
import { observer } from "mobx-react";
import {Row,Col,Form,Input,Icon,Upload,Button,Modal,message,Table} from 'antd';
const FormItem = Form.Item;
const { Column } = Table;
import * as cows from "../../Limits/Permission";

@observer
class CostComponent extends Component
{
    constructor(props){
        super(props);
        props.postForm(props.form);
        this.table = false;
        this.state={
            visible: false,
            data:[]
        }
    }
    showModal = () => {
        this.setState({
            visible: true,
        });
        this.table = false;
    };
    handleCancel = (e) => {
        this.setState({
            visible: false,
        });
    };
    handleImport=(info)=>{
        if (info.file.status === 'done') {
            if(info.file.response.success){
                this.table = false;
                message.success(`${info.file.name} 上传成功`);
                this.setState({
                    visible: false,
                });
            }else{
                this.table = true;
                let falseInfos = info.file.response.message.substring(0,info.file.response.message.length-1);
                falseInfos = falseInfos.split("|");
                let data = [];
                falseInfos.map((item,index)=>{
                    let row = {
                        error:item,
                        index:index
                    };
                    data[index] = row;
                });
                this.setState({data:data});
                message.error(`${info.file.name} 上传失败.`);

            }
        } else if (info.file.status === 'error') {
            this.table = false;
            message.error(`${info.file.name} 上传失败.`);
        }
    };
    goTo=(url,arg)=>{
        this.props.addTab(url,arg);
    }
    render(){
        const {getFieldDecorator}=this.props.form;
        let formItemLayout = {
            labelCol: {
                xs: { span: 24 },
                sm: { span: 8 },
            },
            wrapperCol: {
                xs: { span: 24 },
                sm: { span: 16 },
            },
        };
        console.log(this.props.condition,3434);
        return(
        <div style={{backgroundColor:"rgb(250, 250, 247)"}}>
            <Row style={{padding:'10px 20px'}}>
                <Col span="12">
                    {
                        (!cows.CategoryAddAction)?"":
                            <Button type="primary" className="btn" onClick={this.goTo.bind(this,"/Frame/CostManageAdd","")}><i className="iconfont icon-add" />&nbsp;新增费用</Button>
                    }
                  {/*  {
                        (!cows.CategoryUploadAction)?"":
                            <Button type="primary" className="btn" onClick={this.showModal.bind(this)}><i className="iconfont icon-daoru" />&nbsp;导入</Button>
                    }*/}
                </Col>
                <Col span="12" style={{textAlign:"right"}}>
                    <Button type="primary" className="btn" onClick={this.props.search.bind(this)}><i className="iconfont icon-search" />&nbsp;搜索</Button>
                </Col>
                <Modal
                    title="导入费用管理"
                    visible={this.state.visible}
                    onCancel={this.handleCancel}
                    footer={null}
                >
                    <Upload name="upload"
                            headers={{"ikats-ChiGoose-token":localStorage.ikatsToken}}
                            action="AccountCategory/upload.action"
                            filelist={[]}
                            onChange={this.handleImport}
                            accept=".xls,.xlsx"
                    >
                        <Button>
                            <Icon type="cloud-upload-o" />点击上传
                        </Button>
                    </Upload>
                    {(this.table)?<Table
                        dataSource={this.state.data}
                        pagination={false}
                        style={{"paddingTop":'20px'}}
                    >
                        <Column
                            title="序号"
                            dataIndex="index"
                            key="index"
                        />
                        <Column
                            title="错误信息"
                            dataIndex="error"
                            key="error"
                        />

                    </Table>:null
                    }
                </Modal>
            </Row>
            <div style={{borderBottom:"1px solid #ccc"}}></div>
            <Form style={{margin:"10px 20px"}}>
                <Row>
                    <Col span="6">
                        <FormItem {...formItemLayout}  label="费用类别名称" >
                            {getFieldDecorator('categoryName', {
                                initialValue:this.props.condition.categoryName
                            })(<Input />)}
                        </FormItem>
                    </Col>

                </Row>
            </Form>
        </div>
        )
    }
}
const CostSearchForm=Form.create({
    mapPropsToFields(props){
        return {
            categoryName:{value:props.searchData.categoryName},
            inout:{value:props.searchData.inout},
        }
    }
})(CostComponent);

export default CostSearchForm;