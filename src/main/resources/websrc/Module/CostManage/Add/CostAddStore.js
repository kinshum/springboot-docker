import { observable, action } from "mobx";
import {notification} from 'antd';
import CostManageService from '../../../Service/CostManageService';

export default class CostAddStore {
    @observable loading;

    constructor() {
        this.loading = false;
    }
    @action
    async CostAdd(values)
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
            window.location.hash=`Frame/CostManageList`
        }else{
            notification.open({
                message:"添加失败",
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