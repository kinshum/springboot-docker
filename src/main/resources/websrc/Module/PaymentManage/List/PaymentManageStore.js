import { observable, action } from "mobx";
import {notification} from 'antd';
import PaymentService from "../../../Service/PaymentService";

export default class PaymentManageStore {
    @observable loading;
    @observable accountObjList;
    @observable PaymentList;
    @observable totalCount;
    @observable condition;
    @observable current;
    @observable pageSize;


    constructor() {
        this.loading = false;
        this.accountObjList = [];
        this.PaymentList = [];
        this.totalCount = 1;
        this.condition = {};
        this.current = 1;
        this.pageSize = 20;

    }

    @action
    async searchAllAccountObj(data)
    {
        this.loading = true;
        let result = await PaymentService.searchAllAccountObj({express:data});
        this.accountObjList=result.dataTable?result.dataTable:[];
        this.loading = false;
    }

    @action
    async searchPaymentList({ condition={inout: "0",confirmAfter:"2"} , pageSize=20 , current=1})
    {
        this.loading = true;
        this.PaymentList = [];
        let data={
            express:{...condition},
            pageNum:current,
            pageSize:pageSize
        }
        let result = await PaymentService.searchPaymentList(data);
        this.PaymentList = result.dataTable?result.dataTable:[];
        this.condition=condition;
        this.pageSize=pageSize;
        this.current=current;

        this.loading = false;
    }
    @action
    async paymentTotalCount({condition})
    {
        this.loading = true;
        let data = {express:{...condition}}
        let result = await PaymentService.paymentTotalCount({condition});
        this.totalCount = result.count?result.count:1;
        this.loading = false;
    }


    @action
    async drawInvoice(data,attachment,condition,current,pageSize)
    {
        this.loading = true;
        let result = await PaymentService.drawInvoice({dataRow:data,attachment:attachment});

        if(result.success){
            notification.open({
                message:"开票成功",
                description:result.message
            })
            this.searchPaymentList({condition,current,pageSize});
            this.paymentTotalCount({condition});

        }else{
            notification.open({
                message:"开票失败",
                description:result.message
            })
        }
        this.loading = false;
    }

    @action
    async WriteOff(data,condition,current,pageSize)
    {
        this.loading = true;
        let result = await PaymentService.WriteOff({dataRow:data});

        if(result.success){
            notification.open({
                message:"审核成功",
                description:result.message
            })
            this.searchPaymentList({condition,current,pageSize});
            this.paymentTotalCount({condition});


        }else{
            notification.open({
                message:"审核失败",
                description:result.message
            })
        }
        this.loading = false;
    }

    @action
    async testOneBill(data,callback)
    {
        this.loading = true;
        let result = await PaymentService.testOneBill({express:data});
        if(!result.success){
            callback(result.message);
        }else{
            callback()
        }

    }

    @action
    async clearData()
    {
        this.PaymentList = [];
    }
}