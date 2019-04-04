import { observable, action } from "mobx";
import {notification} from 'antd';
import AccountingService from "../../../Service/AccountingService";

export default class AccountingBuildStore {
    @observable loading;
    @observable accountDataTable;
    @observable accountObjdataTable;
    @observable money;
    @observable inout;
    @observable condition;

    constructor() {
        this.loading = false;
        this.accountDataTable = [];
        this.accountObjdataTable = [];
        this.money = {};
        this.inout = [];
        this.condition = {};
        this.current=0
    }

    @action
    async BuildAccount({condition={status:3,settleType:1},current})
    {
        this.loading = true;
        let data = {express:condition,pageNum:current};
        let result = await AccountingService.BuildAccount(data);
        this.loading = false;
        this.accountDataTable=result.dataTable?result.dataTable:[];
        this.inout = result.inout?result.inout:[];
        this.money = result.money?result.money:{};
        this.condition=condition
        console.log({...this.condition},2323)
    }
    @action
    async buildBill(dataRow,list)
    {
        this.loading = true;
        let data = {
            dataRow:dataRow,
            accountitemBeanList:list
        };
        let result = await AccountingService.buildBill(data);
        this.loading = false;
        if(result.success){
            notification.open
            ({
                message: '对账单生成成功！',
                description: result.message
            });
            this.BuildAccount({status:3,settleType:1});
        }else{
            notification.open
            ({
                message: '对账单生成失败！',
                description: result.message
            });
        }
    }
    @action
    async accountObj(values)
    {
        this.loading = true;
        let data = {express:{...values}};
        let result = await AccountingService.accountObj(data);
        this.loading = false;
        this.accountObjdataTable = result.dataTable?result.dataTable:[];
    }
    // @action
    // async clearData(value)
    // {
    //     this.accountDataTable=[];
    //     this.totalIncome = [];
    //     this.totalOutcome = [];
    // }

}