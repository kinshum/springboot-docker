import { observable, action } from "mobx";
import {notification} from 'antd';
import CostManageService from '../../../Service/CostManageService';

export default class CostEditStore {
    @observable loading;
    @observable CostDetail;

    constructor() {
        this.loading = false;
        this.CostDetail = {};
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
            window.location.hash=`Frame/CostManageDetail/${id}`
        }else{
            notification.open({
                message:"编辑失败",
                description:result.message
            })
        }
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