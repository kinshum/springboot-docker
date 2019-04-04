import { observable, action } from "mobx";
import {notification} from 'antd';
import CostManageService from '../../../Service/CostManageService';

export default class CostDetailStore {
    @observable loading;
    @observable totalCount;
    @observable CostDetail;
    @observable CostDetailTable;
    @observable CostDetailByKeyTable;

    constructor() {
        this.loading = false;
        this.totalCount = null;
        this.CostDetail = {};
        this.CostDetailTable =[];
        this.CostDetailByKeyTable = {};
    }

    @action
    async CostSelectByKey(values)
    {
        this.loading = true;
        let data={...values};
        let result = await CostManageService.CostSelectByKey(data);
        this.CostDetail = result.dataRow?result.dataRow:{};
        this.loading = false;
    }

    @action
    async CostSelect(values,pageNum,pageSize)
    {
        this.loading = true;
        let data={
            express:{...values},
            pageNum:pageNum,
            pageSize:pageSize
        }
        let result = await CostManageService.CostQuery(data);
        this.CostDetailTable = result.dataTable?result.dataTable:[];
        this.loading = false;
    }
    @action
    async CostTotalCount(values)
    {
        this.loading = true;
        let data={express:{...values}}
        let result = await CostManageService.CostTotalCount(data);
        this.totalCount = result.count?result.count:0;
        this.loading = false;
    }

    @action
    async CostSelectDetailByKey(values)
    {
        this.loading = true;
        let result = await CostManageService.CostQuery({expresss:{...values}});
        this.CostDetailByKeyTable = result.dataTable?(result.dataTable[0]?result.dataTable[0]:{}):{};
        this.loading = false;
    }

    @action
    async CostAdd(values,id,pageNum,pageSize)
    {
        this.loading = true;
        let data={dataRow:{...values}};
        let result = await CostManageService.CostAdd(data);
        this.loading = false;
        if(result.success==true){
            notification.open({
                message:"添加成功",
                description:result.message
            });
            this.CostSelectByKey({id:id});
            this.CostSelect({pid:id},pageNum,pageSize);
        }else{
            notification.open({
                message:"添加失败",
                description:result.message
            })
        }
    }

    @action
    async CostEdit(values,id)
    {
        this.loading = true;
        let data={dataRow:{...values}};
        let result = await CostManageService.CostEdit(data);
        this.loading = false;
        if(result.success==true){
            notification.open({
                message:"编辑成功",
                description:result.message
            });
            this.CostSelectByKey({id:id});
            this.CostSelect({pid:id});
        }else{
            notification.open({
                message:"编辑失败",
                description:result.message
            })
        }
    }

    @action
    async clearData()
    {
        /*this.CostDetail = {};
        this.CostDetailTable =[];*/
        this.CostDetailByKeyTable = {};
    }

    @action
    async AccountOnlyOneCode(values,callback){
        let data={express:{categoryCode:values}};
        let result = await CostManageService.AccountOnlyOneCode(data);
        if(!result.success){
            callback(result.message);
        }else{
            callback();
        }
    }

    @action
    async AccountOnlyOneName(values,callback){
        let data={express:{categoryName:values}};
        let result = await CostManageService.AccountOnlyOneName(data);
        if(!result.success){
            callback(result.message);
        }else{
            callback();
        }
    }
}