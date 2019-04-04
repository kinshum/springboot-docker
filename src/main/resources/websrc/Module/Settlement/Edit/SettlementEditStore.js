import { observable, action } from "mobx";
import {notification} from 'antd';
import SettlementService from "../../../Service/SettlementService"

export default class SettlementDetailStore {
    @observable loading;
    @observable countryDataTable;
    @observable SettlementDetail;

    constructor() {
        this.loading = false;
        this.countryDataTable = [];
        this.SettlementDetail = {};
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
    async SettlementSelectByKey(values)
    {
        this.loading = true;
        let data={...values};
        let result = await SettlementService.SettlementSelectByKey(data);
        this.SettlementDetail = result.dataRow?result.dataRow:{};
        this.loading = false;
    }

    @action
    async SettlementEdit(values,id)
    {
        this.loading = true;
        let data={dataRow:{...values}};
        let result = await SettlementService.SettlementEdit(data);
        this.loading = false;
        if(result.success==true){
            notification.open({
                message:"编辑成功",
                description:result.message
            });
            window.location.hash=`Frame/SettlementDetail/${id}`
        }else{
            notification.open({
                message:"编辑失败",
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

    @action
    async clearData()
    {
        this.SettlementDetail = {};
    }

}