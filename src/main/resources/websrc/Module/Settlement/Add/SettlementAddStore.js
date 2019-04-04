import { observable, action } from "mobx";
import {notification} from 'antd';
import SettlementService from "../../../Service/SettlementService"

export default class SettlementAddStore {
    @observable loading;
    @observable countryDataTable;

    constructor() {
        this.loading = false;
        this.countryDataTable = [];
    }

    @action
    async selectCountry(values)
    {
        this.loading = true;
        let data={express:{...values}};
        let result = await SettlementService.selectCountry(data);
        this.loading = false;
        this.countryDataTable=result.dataTable?result.dataTable:[];
    }

    @action
    async SettlementAdd(values)
    {
        this.loading = true;
        let data={dataRow:{...values}};
        let result = await SettlementService.SettlementAdd(data);
        this.loading = false;
        if(result.success==true){
            notification.open({
                message:"添加成功",
                description:result.message
            });
            window.location.hash=`Frame/SettlementList`
        }else{
            notification.open({
                message:"添加失败",
                description:result.message
            })
        }
    }

    @action
    async SettlementOnlyOne(values,callback) {
        let data={express:{settlementObjectId:values}};
        let result = await SettlementService.SettlementOnlyOne(data);
        if(!result.success)
        {
            callback(result.message);
        }
        else
        {
            callback();
        }
    }

    @action
    async SettlementOnlyOneName(values,callback) {
        let data={express:{orgShortname:values}};
        let result = await SettlementService.SettlementOnlyOneName(data);
        if(!result.success)
        {
            callback(result.message);
        }
        else
        {
            callback();
        }
    }

}