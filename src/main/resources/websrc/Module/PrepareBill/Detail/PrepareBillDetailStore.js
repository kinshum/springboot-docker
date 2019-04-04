import { observable, action } from "mobx";
import {notification} from 'antd';
import PrepareService from "../../../Service/PrepareService";


export default class PrepareBillDetailStore {
    @observable loading;
    @observable PrepareBill;
    @observable PrepareBillDetailTable;
    @observable money;
    @observable BillDataRow;
    @observable attachment;
    @observable message;


    constructor() {
        this.loading = false;
        this.PrepareBill = {};
        this.PrepareBillDetailTable = [];
        this.money = {};
        this.BillDataRow = {};
        this.attachment = {};
        this.message = "";


    }

    @action
    async searchPrepareByKey(data)
    {

        this.loading = true;
        let result = await PrepareService.searchPrepareByKey({express:data});
        this.PrepareBillDetailTable=result.dataTable?result.dataTable:[];
        this.money=result.money?result.money:{};
        this.loading = false;
    }

    @action
    async checkBill(data,id)
    {
        this.loading = true;
        let result = await PrepareService.checkBill({dataTable:data});
        if(result.success){
            notification.open({
                message:"确认成功",
                description:result.message
            })
            this.selectBillByKey({id:id});
        }else{
            notification.open({
                message:"确认失败",
                description:result.message
            })
        }
        this.loading = false;
    }


    @action
    async selectBillByKey(data)
    {

        this.loading = true;
        let result = await PrepareService.selectBillByKey(data);
        this.BillDataRow=result.dataRow?result.dataRow:{};
        this.attachment=result.attachment?result.attachment:{};
        this.loading = false;
    }

    //修改对账单详情
    @action
    async modifyBillByKey(data,id)
    {

        this.loading = true;
        let result = await PrepareService.modifyBillByKey({dataRow:data});
        if(result.success){
            notification.open({
                message:"修改成功",
                description:result.message
            })
            this.BillDataRow=[];
            this.selectBillByKey(id);
        }else{
            notification.open({
                message:"修改失败",
                description:result.message
            })
        }
        this.loading = false;
    }
    //导出
    @action
    async exportExcel(data,data2)
    {

        this.loading = true;
        let result = await PrepareService.exportExcel({express:data});
        this.message=result.message?result.message:"";
        if(result.success){
            window.open(`file/export/${this.message}`)
        }
        this.deleteExcel({express:{url:result.message}});
        this.loading = false;

    }
    //导出后删除服务器上的内容；
    @action
    async deleteExcel(data,data2)
    {

        this.loading = true;
        let result = await PrepareService.deleteExcel({express:data});
        // this.message=result.message;
        // if(result.success){
        //     window.open(`file/export/${this.message}`)
        // }
        this.loading = false;
    }

    //删除附件
    @action
    async deleteAttachment(data,id)
    {

        this.loading = true;
        let result = await PrepareService.deleteAttachment({express:data});
        if(result.success) {
            notification.open({
                message: "删除成功",
                description: result.message
            })
            this.attachment={};
            this.selectBillByKey({id:id});
        }else{
            notification.open({
                message:"删除失败",
                description:result.message
            })
        }
    }


}