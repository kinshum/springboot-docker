import { observable, action } from "mobx";
import {notification} from 'antd';
import SettlementService from "../../../Service/SettlementService"

export default class SettlementListStore {
    @observable loading;
    @observable SettlementDataTable;
    @observable totalCount;
    @observable condition;
    @observable current;
    @observable pageSize;

    constructor() {
        this.loading = false;
        this.SettlementDataTable = [];
        this.totalCount = null;
        this.condition = {};
        this.current = 1;
        this.pageSize = 10;
    }

    @action
    async SettlementQuery({condition={} , pageSize=10 , current=1 })
    {
        this.loading = true;
        let data={
            express:{...condition},
            pageNum:current,
            pageSize:pageSize,
        }
        let result = await SettlementService.SettlementQuery(data);
        this.SettlementDataTable = result.dataTable?result.dataTable:[];
        this.loading = false;
        this.condition = condition;
        this.current = current;

        this.pageSize = pageSize;
    }
    @action
    async SettlementTotalCount({condition})
    {
        this.loading = true;
        let data={express:{...condition}}
        let result = await SettlementService.SettlementTotalCount(data);
        this.totalCount = result.count?result.count:1;
        this.loading = false;
    }


    /*@action
    async SettlementDel(values)
    {
        this.loading = true;
        let result = await SettlementService.SettlementDel(values);
        this.loading = false;
        if(result.success==true){
            notification.open({
                message:"删除成功",
                description:result.message
            })
        }else{
            notification.open({
                message:"删除失败",
                description:result.message
            })
        }
    }*/
}