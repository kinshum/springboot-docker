import { observable, action } from "mobx";
import {notification} from 'antd';
import AccountingService from "../../../Service/AccountingService";

export default class AccountingEditStore {
    @observable loading;
    @observable accountDataRow;
    @observable categoryDataTable;
    @observable categoryDataTable2;
    @observable accountObjdataTable;
    @observable accountCurrencydataTable;
    @observable exchangeRate;
    @observable myExchangeRate;
    @observable businessTypeDataTable;
    @observable attachment;

    constructor() {
        this.loading = false;
        this.accountDataRow = {};
        this.categoryDataTable = [];
        this.categoryDataTable2 = [];
        this.accountObjdataTable = [];
        this.accountCurrencydataTable = [];
        this.exchangeRate = null;
        this.myExchangeRate = null;
        this.businessTypeDataTable = [];
        this.attachment = {};
    }

    @action
    async selectAccount(id)
    {
        this.clearData();
        this.loading = true;
        let data = {id:id};
        let result = await AccountingService.selectAccount(data);
        this.loading = false;
        this.accountDataRow=result.dataRow?result.dataRow:{};
        this.attachment = result.attachment?result.attachment:{};
    }
    @action
    async updateAccount(dataRow,attachment)
    {
        this.loading = true;
        let data = {dataRow:dataRow,attachment:attachment};
        let result = await AccountingService.updateAccount(data);
        this.loading = false;
        if(result.success==true)
        {
            notification.open
            ({
                message: '编辑成功',
                description: result.message
            });
        }
        else
        {
            notification.open
            ({
                message: '编辑失败',
                description: result.message
            });
        }
    }
    @action
    async AccountCategory(values)
    {
        this.loading = true;
        let data = {express:{...values}};
        let result = await AccountingService.AccountCategory(data);
        this.loading = false;
        this.categoryDataTable=result.dataTable?result.dataTable:[];
    }
    @action
    async AccountCategory2(values)
    {
        this.loading = true;
        let data = {express:{...values}};
        let result = await AccountingService.AccountCategory(data);
        this.loading = false;
        this.categoryDataTable2=result.dataTable?result.dataTable:[];
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
    @action
    async accountCurrency(values)
    {
        this.loading = true;
        let data = {express:{...values}};
        let result = await AccountingService.accountCurrency(data);
        this.loading = false;
        this.accountCurrencydataTable = result.dataTable?result.dataTable:[];
    }
    @action
    async accountGetrate(dataRow,form)
    {
        this.loading = true;
        let data = {dataRow:dataRow};
        let result = await AccountingService.accountGetrate(data);
        this.loading = false;
        this.exchangeRate = result.money?(result.money.exchangeRate?result.money.exchangeRate:0):0;
        form.setFieldsValue({'exchangeRate':this.exchangeRate});
        // form.getFieldValue('amount')
        // form.setFieldsValue({'settelmentAmount':(this.exchangeRate*form.getFieldValue('amount'))});
    }
    @action
    async accountAmount(dataRow,form)
    {
        this.loading = true;
        let data = {dataRow:dataRow};
        let result = await AccountingService.accountGetrate(data);
        this.loading = false;
        this.exchangeRate = result.money?(result.money.exchangeRate?result.money.exchangeRate:0):0;
        form.setFieldsValue({'exchangeRate':this.exchangeRate});
        form.getFieldValue('amount')
        form.setFieldsValue({'settelmentAmount':(this.exchangeRate*form.getFieldValue('amount')).toFixed(2)});
    }
    @action
    async myexchangeRate(dataRow,form)
    {
        this.loading = true;
        let data = {dataRow:dataRow};
        let result = await AccountingService.accountGetrate(data);
        this.loading = false;
        this.myExchangeRate = result.money?(result.money.exchangeRate?result.money.exchangeRate:0):0;
        form.setFieldsValue({'myExchangeRate':this.myExchangeRate})
    }
    @action
    async businessType(values)
    {
        this.loading = true;
        let data = {express:{...values}};
        let result = await AccountingService.businessType(data);
        this.loading = false;
        this.businessTypeDataTable = result.dataTable?result.dataTable:[];
    }
    @action
    async deleteFile(values,id)
    {
        let data = {express:{...values}}
        let result = await AccountingService.deleteFiles(data);
        if(result.success==true)
        {
            notification.open
            ({
                message: '附件删除成功',
                description: result.message
            });
            let result1= await AccountingService.selectAccount({id:id});
            this.attachment=result1.attachment?result1.attachment:{};
        }else{
            notification.open
            ({
                message: '附件删除失败',
                description: result.message
            });
        }
    }
    @action
    async clearData(){
        this.accountDataRow={};
        this.attachment={};
    }
}