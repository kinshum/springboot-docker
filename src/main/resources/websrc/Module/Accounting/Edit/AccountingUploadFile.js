import React,{Component} from 'react';
import { Upload, Icon, Modal } from 'antd';

export default class AccountingUploadFile extends Component {

    fileLists = [];
    constructor(props)
    {
        super(props);
        this.state = {
            previewVisible: false,
            previewImage: '',
            fileList: props.fileList,
        };
    }
    componentWillReceiveProps (nextProps)
    {
        this.fileLists = nextProps.fileList;
        this.setState({
            fileList:nextProps.fileList,
        })
    }

    handleCancel = () => this.setState({ previewVisible: false })

    handlePreview = (file) => {
        this.setState({
            previewImage: file.url || file.thumbUrl,
            previewVisible: true,
        });
    }

    handleChange = ({ fileList }) => {
        this.setState({ fileList });
        this.fileLists = fileList;
        this.props.setUploadFiled(fileList);
    }
    handleRemove=(file)=>{
        let sendData;
        let arr=[];
        if(file.url){
            arr=file.url.split("/");
            sendData={
                url:arr[arr.length-1],
                id:file.uid
            }
        }else{
            sendData={
                url:file.response.attachmentUrl
            }
        }
        this.props.deleteFile(sendData);
    }

    render() {
        const { previewVisible, previewImage } = this.state;
        const uploadButton = (
            <div>
                <Icon type="plus" />
                <div className="ant-upload-text">合同、发票</div>
            </div>
        );
        return (
            <div className="clearfix">
                <Upload
                    action='/AmsAttachment/upload.action'
                    listType="picture-card"
                    fileList={this.state.fileList}
                    onPreview={this.handlePreview}
                    onChange={this.handleChange}
                    onRemove={this.handleRemove}
                    accept=".jpg,.png,.doc,.docx,.pdf,.xls,.xlsx"
                >
                    {/*{uploadButton}*/}
                    {this.state.fileList.length >= 1 ? null : uploadButton}
                </Upload>
                <Modal visible={previewVisible} footer={null} onCancel={this.handleCancel}>
                    <img alt="example" style={{ width: '100%' }} src={previewImage} />
                </Modal>
            </div>
        );
    }
}