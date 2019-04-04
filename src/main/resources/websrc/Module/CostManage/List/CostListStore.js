import { observable, action } from "mobx";
import CostManageService from '../../../Service/CostManageService';

export default class CostListStore {
    @observable loading;
    @observable CostDataTable;
    @observable totalCount;
    @observable condition;
    @observable current;
    @observable pageSize;

    constructor() {
        this.loading = false;
        this.CostDataTable = [];
        this.totalCount = 1;
        this.condition = {pid:0};
        this.current = 1;
        this.pageSize = 10;

    }

    @action
    async CostQuery({condition={pid:0},current=1,pageSize=10})
    {
        this.loading = true;
        let data={
            express:{...condition},
            pageNum:current,
            pageSize:pageSize
        }
        let result = await CostManageService.CostQuery(data);

        if(result.success){
            this.loading = false;
            this.CostDataTable = result.dataTable?result.dataTable:[];
            this.condition = {...condition};
            this.current = current;
            this.pageSize = pageSize;
        }else{
            this.loading = false;
            this.CostDataTable =[];
        }
    }
    @action
    async CostTotalCount({condition})
    {
        this.loading = true;
        let data={express:{...condition}}
        let result = await CostManageService.CostTotalCount(data);
        if(result.success){
            this.totalCount = result.count?result.count:1;
            this.loading = false;
        }if(!result.success){
            this.totalCount = 1;
            this.loading = false;
        }
    }
}