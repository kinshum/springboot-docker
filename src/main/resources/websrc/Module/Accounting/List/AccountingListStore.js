import { observable, action } from "mobx";
import {notification} from 'antd';
import AccountingService from "../../../Service/AccountingService";
import PrepareService from "../../../Service/PrepareService";
import CostManageService from '../../../Service/CostManageService';

export default class AccountingListStore {
    @observable loading;
    @observable accountDataTable;
    @observable totalCount;
    @observable accountObjList;
    @observable costTreeData;
    @observable accountDataRow;
    @observable businessTypeDataTable;
    @observable modalDataTable;
    @observable refNo;
    @observable attachment;
    @observable amount;
    @observable money;
    @observable condition;
    @observable current;
    @observable pageSize;

    constructor() {
        this.loading = false;
        this.accountDataTable = [];
        this.accountObjList = [];
        this.costTreeData = [];
        this.totalCount = 0;
        this.accountDataRow = {};
        this.businessTypeDataTable = [];
        this.modalDataTable = [];
        this.refNo = "";
        this.attachment = {};
        this.amount = 0;
        this.totalCount = 0;
        this.money = {};
        this.condition = {};
        this.current = 1;
        this.pageSize = 10;
    }
    @action
    async pageByQueryAccount( { condition={} , pageSize=10 , current=1})
    {
        this.loading = true;
        const data={
            express:{...condition},
            pageNum: current,
            pageSize: pageSize
        };
        let result = await AccountingService.pageByQueryAccount(data);

        this.loading = false;

            this.accountDataTable=result.dataTable?result.dataTable:[];
            this.condition=condition
            this.current=current
            this.pageSize=pageSize

    }
    @action
    async AccountTotalCount({condition={}})
    {
        this.loading = true;
        let data = {express:{...condition}};
        let result = await AccountingService.AccountTotalCount(data);
        this.loading = false;
        this.totalCount = result.count?result.count:1;
    }
    @action
    async BuildAccount(values)
    {
        this.loading = true;
        let data = {express:{...values}};
        let result = await AccountingService.BuildAccount(data);
        this.loading = false;
        this.modalDataTable=result.dataTable?result.dataTable:[];
        this.refNo = result.dataTable?(result.dataTable[0]?(result.dataTable[0].refNo?result.dataTable[0].refNo:""):""):"";
        this.money=result.money?result.money:{}
    }
    @action
    async searchAccountObj(data)
    {
        this.loading = true;
        let result = await AccountingService.accountObj({express:data});
        this.loading = false;
        this.accountObjList=result.dataTable?result.dataTable:[];
    }
    @action
    async getCostTree()
    {
        this.loading = true;
        let result = await AccountingService.treeDate({express:{pid:0}});
        this.loading = false;
        this.costTreeData = result.treeDate?result.treeDate:[];
    }

    @action
    async deleteAccount(id,condition,current,pageSize)
    {
        this.loading = true;
        let data = {id:id};
        let result = await AccountingService.deleteAccount(data);
        this.loading = false;


        if(result.success==true)
        {
            notification.open
            ({
                message: '删除成功',
                description: result.message
            });
            this.pageByQueryAccount({condition,current,pageSize});
            this.AccountTotalCount({condition})
        }
        else
        {
            notification.open
            ({
                message: '删除失败',
                description: result.message
            });
        }
    }
    @action
    async checkAccount(dataTable,condition,current,pageSize)
    {
        this.loading = true;
        let data = {dataTable:dataTable};
        let result = await AccountingService.checkAccount(data);
        this.loading = false;

        if(result.success==true){
            notification.open
            ({
                message: '审核成功',
                description: result.message
            });
            this.clearData()
            this.pageByQueryAccount({condition,current,pageSize});
        }else{
            notification.open
            ({
                message: '审核失败',
                description: result.message
            });
        }
    }
    @action
    async selectAccount(id)
    {
        this.clearAccount();
        this.loading = true;
        let data = {id:id};
        let result = await AccountingService.selectAccount(data);
        this.loading = false;
        this.accountDataRow=result.dataRow?result.dataRow:{};
        this.attachment = result.attachment?result.attachment:{};
        this.amount=result.dataRow?(result.dataRow.amount?result.dataRow.amount:0):0
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
    async clearData()
    {
        this.accountDataTable=[]
    }
    @action
    async clearAccount()
    {
        this.accountDataRow={};
        this.attachment={};
    }
}