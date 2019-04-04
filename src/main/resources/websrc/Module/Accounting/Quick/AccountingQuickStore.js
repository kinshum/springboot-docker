import { observable, action } from "mobx";
import {notification} from 'antd';
import AccountingService from "../../../Service/AccountingService";

export default class AccountingQuickStore {
    @observable loading;
    @observable accountObjdataTable;
    @observable businessTypeDataTable;
    @observable categoryDataTable;
    @observable categoryDataTable2;
    @observable accountCurrencydataTable;
    @observable exchangeRate;
    @observable myExchangeRate;
    @observable outDataTable;
    @observable outDataTable2;
    @observable totalIn;
    @observable totalOut;
    @observable total;

    constructor() {
        this.loading = false;
        this.accountObjdataTable = [];
        this.businessTypeDataTable = [];
        this.categoryDataTable = [];
        this.categoryDataTable2 = [];
        this.accountCurrencydataTable = [];
        this.exchangeRate = null;
        this.myExchangeRate = null;
        this.outDataTable = [];
        this.outDataTable2 = [];
        this.totalIn = 0;
        this.totalOut = 0;
        this.total = 0;
    }
    @action
    async accountObj(values)
    {
        this.loading = true;
        let data={express:{...values}}
        let result = await AccountingService.accountObj(data);
        this.loading = false;
        this.accountObjdataTable = result.dataTable?result.dataTable:[];
    }
    @action
    async businessType(values)
    {
        this.loading = true;
        let data={express:{...values}}
        let result = await AccountingService.businessType(data);
        this.loading = false;
        this.businessTypeDataTable = result.dataTable?result.dataTable:[];
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
    async OutCategory(values)
    {
        this.loading = true;
        let data = {express:{...values}};
        let result = await AccountingService.AccountCategory(data);
        this.loading = false;
        this.outDataTable=result.dataTable?result.dataTable:[];
    }
    @action
    async OutCategory2(values)
    {
        this.loading = true;
        let data = {express:{...values}};
        let result = await AccountingService.AccountCategory(data);
        this.loading = false;
        this.outDataTable2=result.dataTable?result.dataTable:[];
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
    async accountGetrate(dataRow,form,k)
    {
        this.loading = true;
        let data = {dataRow:dataRow};
        let result = await AccountingService.accountGetrate(data);
        this.loading = false;
        this.exchangeRate = result.money?(result.money.exchangeRate?result.money.exchangeRate:0):0;
        form.setFieldsValue({[`exchangeRate-${k}`]:this.exchangeRate});
        // form.getFieldValue(`amount-${k}`);
        // form.setFieldsValue({[`settelmentAmount-${k}`]:(this.exchangeRate*form.getFieldValue(`amount-${k}`))});
    }
    @action
    async accountAmountIn(dataRow,form,k,basic)
    {
        this.loading = true;
        let data = {dataRow:dataRow};
        let result = await AccountingService.accountGetrate(data);
        this.loading = false;
        this.exchangeRate = result.money?(result.money.exchangeRate?result.money.exchangeRate:0):0;
        form.setFieldsValue({[`exchangeRate-${k}`]:this.exchangeRate});
        form.getFieldValue(`amount-${k}`);
        form.setFieldsValue({[`settelmentAmount-${k}`]:(this.exchangeRate*form.getFieldValue(`amount-${k}`))});
        let total=0;
        let totalPrice =0;
        form.getFieldValue('keys').map((k,index)=>{
            total=form.getFieldValue([`settelmentAmount-${k}`]);
            totalPrice=total+totalPrice;
        })
        this.totalIn = totalPrice?totalPrice:0
        this.total=this.totalIn-this.totalOut;
        form.setFieldsValue({"totalIn":this.totalIn});
        basic.setFieldsValue({"total":this.total});
    }
    @action
    async accountAmountOut(dataRow,form,k,basic)
    {
        this.loading = true;
        let data = {dataRow:dataRow};
        let result = await AccountingService.accountGetrate(data);
        this.loading = false;
        this.exchangeRate = result.money?(result.money.exchangeRate?result.money.exchangeRate:0):0;
        form.setFieldsValue({[`exchangeRate-${k}`]:this.exchangeRate});
        form.getFieldValue(`amount-${k}`);
        form.setFieldsValue({[`settelmentAmount-${k}`]:(this.exchangeRate*form.getFieldValue(`amount-${k}`))});
        let total=0;
        let totalPrice =0;
        form.getFieldValue('keys').map((k,index)=>{
            total=form.getFieldValue([`settelmentAmount-${k}`]);
            totalPrice=total+totalPrice;
        })
        this.totalOut = totalPrice;
        this.total=this.totalIn-this.totalOut;
        form.setFieldsValue({"totalOut":this.totalOut});
        basic.setFieldsValue({"total":this.total});
    }
    @action accountDaleteIn(data,form,basic)
    {
        let total=0;
        let totalIn=0;
        data.map((k,index)=>{
            total=form.getFieldValue([`settelmentAmount-${k}`]);
            totalIn = totalIn+total;
        })
        this.totalIn = totalIn;
        this.total=this.totalIn-this.totalOut;
        form.setFieldsValue({"totalIn":this.totalIn});
        basic.setFieldsValue({"total":this.total});
    }
    @action accountDaleteOut(data,form,basic)
    {
        let total=0;
        let totalOut=0;
        data.map((k,index)=>{
            total=form.getFieldValue([`settelmentAmount-${k}`]);
            totalOut = totalOut+total;
        })
        this.totalOut = totalOut;
        this.total=this.totalIn-this.totalOut;
        form.setFieldsValue({"totalOut":this.totalOut});
        basic.setFieldsValue({"total":this.total});
    }
    @action
    async myexchangeRate(dataRow,form,k)
    {
        this.loading = true;
        let data = {dataRow:dataRow};
        let result = await AccountingService.accountGetrate(data);
        this.loading = false;
        this.myExchangeRate = result.money?(result.money.exchangeRate?result.money.exchangeRate:0):0;
        form.setFieldsValue({[`myExchangeRate-${k}`]:this.myExchangeRate});
    }
    @action
    async insertList(dataRow,dataTable,inForm,outForm)
    {
        this.loading = true;
        let data = {
            dataRow:dataRow,
            dataTable:dataTable
        }
        let result = await AccountingService.insertList(data);
        this.loading = false;
        if(result.success){
            notification.open
            ({
                message: '添加成功',
                description: result.message
            });
            inForm.resetFields();
            outForm.resetFields();
            this.clearData();
        }else{
            notification.open
            ({
                message: '添加失败',
                description: result.message
            });
        }
    }
    @action
    async clearData(){
        this.totalIn=0;
        this.totalOut=0;
        this.total=0;
    }
}
