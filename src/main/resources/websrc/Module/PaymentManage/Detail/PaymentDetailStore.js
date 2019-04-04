import { observable, action } from "mobx";
import {notification} from 'antd';
import PaymentService from "../../../Service/PaymentService";


export default class PaymentManageStore {
    @observable loading;
    @observable PrepareBill;
    @observable PaymentDetailTable;
    @observable disbursement;
    @observable inout;
    @observable money;
    @observable BillDataRow;
    @observable attachment;

    constructor() {
        this.loading = false;
        this.PrepareBill = {};
        this.PaymentDetailTable = [];
        this.inout = [];
        this.money = {};
        this.BillDataRow={};
        this.attachment={};


    }
    //对账明细
    @action
    async searchPaymentByKey(data)
    {

        this.loading = true;
        let result = await PaymentService.searchPaymentByKey({express:data});
        this.PaymentDetailTable=result.dataTable?result.dataTable:[];
        this.inout=result.inout?result.inout:[];
        this.money=result.money?result.money:{};

        this.loading = false;
    }
    //对账单明细
    @action
    async selectBillByKey(data)
    {

        this.loading = true;
        let result = await PaymentService.selectBillByKey(data);
        this.BillDataRow=result.dataRow?result.dataRow:{};
        this.attachment=result.attachment?result.attachment:{};
        this.loading = false;
    }

    //修改对账单详情
    @action
    async modifyBillByKey(data,id)
    {

        this.loading = true;
        let result = await PaymentService.modifyBillByKey({dataRow:data});
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
        let result = await PaymentService.deleteAttachment({express:data});
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