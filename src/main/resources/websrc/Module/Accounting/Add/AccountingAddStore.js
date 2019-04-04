import { observable, action } from "mobx";
import {notification} from 'antd';
import AccountingService from "../../../Service/AccountingService";

export default class AccountingAddStore {
    @observable loading;
    @observable categoryDataTable;
    @observable categoryDataTable2;
    @observable accountObjdataTable;
    @observable accountCurrencydataTable;
    @observable accountDataRow;
    @observable exchangeRate;
    @observable myExchangeRate;
    @observable businessTypeDataTable;
    @observable attachment;
    @observable success;

    constructor() {
        this.loading = false;
        this.categoryDataTable = [];
        this.categoryDataTable2 = [];
        this.accountObjdataTable = [];
        this.accountCurrencydataTable = [];
        this.accountDataRow = {};
        this.exchangeRate = 0;
        this.myExchangeRate = 0;
        this.businessTypeDataTable = [];
        this.attachment = [];
        this.success = false;

    }

    @action
    async insertAccount(dataRow,attachment,type,form)
    {
        this.loading = true;
        let data = {dataRow:dataRow,attachment:attachment};
        let result = await AccountingService.insertAccount(data);
        this.loading = false;
        this.success = result.success?result.success:false;
        this.clear();
        if(result.success==true)
        {
            notification.open
            ({
                message: '添加成功',
                description: result.message
            });
            window.location.hash=`Frame/accountingAdd/${type}`;
            this.success = result.success;
            form.resetFields(['businessType']);
            form.resetFields(['tradeTime']);
            form.resetFields(['categoryLevel1Name']);
            // form.resetFields(['categoryLevel1Code']);
            form.resetFields(['categoryLevel2Name']);
            // form.resetFields(['categoryLevel2Code']);
            form.resetFields(['amount']);
            form.resetFields(['currency']);
            form.resetFields(['settelmentAmount']);
            form.resetFields(['exchangeRate']);
            form.resetFields(['myExchangeRate']);
            form.resetFields(['accountBrief']);
            form.resetFields(['note']);
        }
        else
        {
            notification.open
            ({
                message: '添加失败',
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
    async selectAccount(id)
    {
        this.loading = true;
        let data = {id:id};
        let result = await AccountingService.selectAccount(data);
        this.loading = false;
        this.accountDataRow=result.dataRow?result.dataRow:[];
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
        // form.getFieldDecorator('exchangeRate', {initialValue:this.exchangeRate})
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
        // form.getFieldDecorator('exchangeRate', {initialValue:this.exchangeRate})
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
        form.setFieldsValue({'myExchangeRate':this.myExchangeRate});
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
    async deleteFile(values)
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
        }else{
            notification.open
            ({
                message: '附件删除失败',
                description: result.message
            });
        }
    }
    @action
    async clear()
    {
        this.accountDataRow={};
        this.exchangeRate=null;
        this.myExchangeRate=null;
    }

}