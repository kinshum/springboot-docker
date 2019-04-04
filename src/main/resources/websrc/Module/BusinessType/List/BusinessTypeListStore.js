import { observable, action } from "mobx";
import {notification} from 'antd';
import BusinessTypeService from '../../../Service/BusinessTypeService'

export default class BusinessTypeListStore {
    @observable loading;
    @observable BusinessTypeDataTable;
    @observable BusinessTypeByKeyDataRow;
    @observable totalCount;
    @observable condition;
    @observable current;
    @observable pageSize;

    constructor() {
        this.loading = false;
        this.BusinessTypeDataTable = [];
        this.BusinessTypeByKeyDataRow = {};
        this.totalCount = 1;
        this.condition = {};
        this.current = 1;
        this.pageSize = 10;
    }

    @action
    async BusinessTypeQuery({condition={},current=1,pageSize=10})
    {
        this.loading = true;
        let data={
            express:{...condition},
            pageNum:current,
            pageSize:pageSize
        }
        let result = await BusinessTypeService.BusinessTypeQuery(data);
        this.BusinessTypeDataTable = result.dataTable?result.dataTable:[];
        this.loading = false;
        this.condition = condition;
        this.current = current;
        this.pageSize = pageSize;
    }
    @action
    async BusinessTotalCount(values)
    {
        this.loading = true;
        let data={express:{...values}}
        let result = await BusinessTypeService.BusinessTotalCount(data);
        this.totalCount = result.count?result.count:[];
        this.loading = false;
    }


    @action
    async BusinessTypeAdd(values,value,page)
    {
        this.loading = true;
        let data={dataRow:{...values}};
         let result = await BusinessTypeService.BusinessTypeAdd(data);
       let pageNum= 1 ;
       let pageSize= 10;
        this.loading = false;
        if(result.success==true){
            notification.open({
                message:"添加成功",
                description:result.message
            });
            value = {};
            this.BusinessTypeQuery(value,pageNum,pageSize);
            this.BusinessTotalCount(value)
        }else{
            notification.open({
                message:"添加失败",
                description:result.message
            })
        }
    }

    @action
    async BusinessTypeSelectByKey(values)
    {
        this.loading = true;
        let data={...values};
        let result = await BusinessTypeService.BusinessTypeSelectByKey(data);
        this.BusinessTypeByKeyDataRow = result.dataRow?result.dataRow:{};
        this.loading = false;
    }

    @action
    async BusinessTypeEdit(values,value,pageNum,pageSize)
    {
        this.loading = true;
        let data={dataRow:{...values}};
        let result = await BusinessTypeService.BusinessTypeEdit(data);
        this.loading = false;
        if(result.success==true){
            notification.open({
                message:"编辑成功",
                description:result.message
            });
            value = {};
            this.BusinessTypeQuery(value,pageNum,pageSize);
            this.BusinessTotalCount(value)
        }else{
            notification.open({
                message:"编辑失败",
                description:result.message
            })
        }
    }

    @action
    async BusinessTypeDel(values,value,pageNum,pageSize)
    {
        this.loading = true;
        let data={...values};
        let result = await BusinessTypeService.BusinessTypeDel(data);
        this.loading = false;
        if(result.success==true){
            notification.open({
                message:"删除成功",
                description:result.message
            });
            value = {};
            this.BusinessTypeQuery(value,pageNum,pageSize);
            this.BusinessTotalCount(value)
        }else{
            notification.open({
                message:"删除失败",
                description:result.message
            })
        }
    }

    @action
    async BusinessOnlyOne(value,callback) {
        let data={express:{businessTypeName:value}};
        let result = await BusinessTypeService.BusinessOnlyOne(data);
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