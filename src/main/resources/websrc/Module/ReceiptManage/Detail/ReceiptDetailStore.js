import { observable, action } from "mobx";
import {notification} from 'antd';
import ReceiptService from "../../../Service/ReceiptService";


export default class ReceiptDetailStore {
    @observable loading;
    @observable PrepareBill;
    @observable ReceiptDetailTable;
    @observable money;
    @observable BillDataRow;
    @observable attachment;

    constructor() {
        this.loading = false;
        this.PrepareBill = {};
        this.ReceiptDetailTable = [];
        this.money = {};
        this.BillDataRow = {};
        this.attachment = {};

    }

    @action
    async searchReceiptByKey(data)
    {

        this.loading = true;
        let result = await ReceiptService.searchReceiptByKey({express:data});
        this.ReceiptDetailTable=result.dataTable?result.dataTable:[];
        this.money=result.money;

    }
    //对账单明细
    @action
    async selectBillByKey(data)
    {

        this.loading = true;
        let result = await ReceiptService.selectBillByKey(data);
        this.BillDataRow=result.dataRow?result.dataRow:{};
        this.attachment=result.attachment?result.attachment:{};
        this.loading = false;
    }

    //修改对账单详情
    @action
    async modifyBillByKey(data,id)
    {

        this.loading = true;
        let result = await ReceiptService.modifyBillByKey({dataRow:data});
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

    //删除附件
    @action
    async deleteAttachment(data,id)
    {

        this.loading = true;
        let result = await ReceiptService.deleteAttachment({express:data});
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