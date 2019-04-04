import { observable, action } from "mobx";
import {notification,message} from 'antd';
import PrepareService from "../../../Service/PrepareService";

export default class PrepareBillListStore {
    @observable loading;
    @observable tatalCount;
    @observable accountObjList;
    @observable PrepareList;
    @observable PrepareBill;
    @observable condition;
    @observable current;
    @observable pageSize;
    constructor() {
        this.loading = false;
        this.tatalCount=0;
        this.PrepareList = [];
        this.PrepareBill = {};
        this.accountObjList =[];
        this.condition = {};
        this.current = 1;
        this.pageSize = 10;
    }

    @action
    async searchPrepareList({ condition={} , pageSize=20 , current=1})
    {
        this.loading = true;
        this.clearData();
        let data = {
            express:{...condition},
            pageNum:current,
            pageSize:pageSize,
        }
        let result = await PrepareService.searchPrepareList(data);
        this.PrepareList = result.dataTable?result.dataTable:[];
        this.loading = false;
        this.condition =condition;
        this.current = current;
        this.pageSize = pageSize;
    }
    @action
    async billTotalCount({condition})
    {
        this.loading = true;
        let data = {express:{...condition}}
        let result = await PrepareService.billTotalCount(data);
        this.loading = false;
        this.tatalCount = result.count?result.count:1;

    }

    @action
    async searchAllAccountObj(data)
    {
        this.loading = true;
        let result = await PrepareService.searchAllAccountObj({express:data});
        this.accountObjList=result.dataTable?result.dataTable:[];
        this.loading = false;
    }

    @action
    async clearData()
    {
        this.PrepareList = [];
    }
}