import { observable, action } from "mobx";
import {notification} from 'antd';
import SettlementService from "../../../Service/SettlementService"

export default class SettlementDetailStore {
    @observable loading;
    @observable SettlementDetail;

    constructor() {
        this.loading = false;
        this.SettlementDetail = {};
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

}