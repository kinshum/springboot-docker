import { observable, action } from "mobx";
import {notification} from 'antd';
import ReceiptService from "../../../Service/ReceiptService";

export default class PrepareBillListStore {
    @observable loading;
    @observable totalCount;
    @observable accountObjList;
    @observable ReceiveList;
    @observable condition;
    @observable current;
    @observable pageSize;


    constructor() {
        this.loading = false;
        this.totalCount=0;
        this.ReceiveList = [];
        this.accountObjList =[];
        this.condition = {};
        this.current = 1;
        this.pageSize = 10;
    }

    @action
    async searchReceiveList({ condition={inout:"1",confirmAfter:"2"} , pageSize=10 , current=1})
    {
        this.loading = true;
        this.clearData();
        let data = {
            express:{...condition},
            pageNum:current,
            pageSize:pageSize
        }
        let result = await ReceiptService.searchReceiveList(data);
        this.ReceiveList = result.dataTable?result.dataTable:[];
        this.loading = false;
        this.condition = condition;
        this.current = current;
        this.pageSize = pageSize;
    }
    @action
    async receiveTotalCount({condition})
    {
        this.loading = true;
        let data = {express:{...condition}}
        let result = await ReceiptService.receiveTotalCount(data);
        this.totalCount = result.count?result.count:1;
        this.loading = false;
    }
    @action
    async searchAllAccountObj(data)
    {
        this.loading = true;
        let result = await ReceiptService.searchAllAccountObj({express:data});
        this.accountObjList=result.dataTable?result.dataTable:[];
        this.loading = false;
    }

    @action
    async drawInvoice(data,attachment,condition,current,pageSize)
    {
        this.loading = true;
        let result = await ReceiptService.drawInvoice({dataRow:data,attachment:attachment});

        if(result.success){
            notification.open({
                message:"开票成功",
                description:result.message
            })
            this.searchReceiveList({condition,current,pageSize});
            this.receiveTotalCount({condition});
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
        let result = await ReceiptService.WriteOff({dataRow:data});
        if(result.success){
            notification.open({
                message:"审核成功",
                description:result.message
            })
            this.searchReceiveList({condition,current,pageSize});
            this.receiveTotalCount({condition});

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
        let result = await ReceiptService.testOneBill({express:data});
        if(!result.success){
            callback(result.message);
        }else{
            callback()
        }

    }

    @action
    async clearData()
    {
        this.ReceiveList = [];
    }
}