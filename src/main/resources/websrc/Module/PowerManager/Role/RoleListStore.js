import { observable, action } from "mobx";
import {notification} from 'antd';
import PowerManagerService from "../../../Service/PowerManagerService";

export default class RoleListStore {
    @observable loading;
    @observable roleDataTable;
    @observable totalCount;
    @observable roleDataRow;
    @observable current;
    @observable pageSize;
    @observable condition;

    constructor() {
        this.loading = false;
        this.roleDataTable = [];
        this.totalCount = 0;
        this.roleDataRow = {};
        this.current=1;
        this.pageSize = 10;
        this.condition = {};

    }
    @action
    async pageQueryRole({condition={},current=1,pageSize=10})
    {
        this.loading = true;
        let data = {
            express:{...condition},
            pageNum:current,
            pageSize:pageSize
        }
        let result = await PowerManagerService.pageQueryRole(data);
        this.roleDataTable = result.dataTable?result.dataTable:[];
        this.loading = false;
        this.current=current;
        this.pageSize = pageSize;
        this.condition = condition;
    }
    @action
    async roleTotalCount({condition})
    {
        this.loading = true;
        let data = {express:{...condition}}
        let result = await PowerManagerService.roleTotalCount(data);
        this.totalCount = result.count?result.count:1;
        this.loading = false;
    }
    @action
    async addRole(dataRow,values,pageNum,pageSize)
    {
        this.loading = true;
        let data = {dataRow:dataRow}
        let result = await PowerManagerService.addRole(data);
        this.loading = false;
        if(result.success){
            notification.open({
                message:"添加成功",
                description:result.message
            });
            this.pageQueryRole(values,pageNum,pageSize);
            this.roleTotalCount(values)
        }else{
            notification.open({
                message:"添加失败",
                description:result.message
            });
        }
    }
    @action
    async removeRole(id,values,pageNum,pageSize)
    {
        this.loading = true;
        let result = await PowerManagerService.removeRole({id:id});
        this.loading = false;
        if(result.success){
            notification.open({
                message:"删除成功",
                description:result.message
            });
            this.pageQueryRole(values,pageNum,pageSize);
            this.roleTotalCount(values)
        }else{
            notification.open({
                message:"删除成功",
                description:result.message
            });
        }
    }
    @action
    async getRole(id)
    {
        this.loading = true;
        let result = await PowerManagerService.getRole({id:id});
        this.roleDataRow = result.dataRow?result.dataRow:{}
        this.loading = false;
    }
    @action
    async modifyRole(dataRow,values,pageNum,pageSize)
    {
        this.loading = true;
        let data = {dataRow:dataRow}
        let result = await PowerManagerService.modifyRole(data);
        this.loading = false;
        if(result.success){
            notification.open({
                message:"编辑成功",
                description:result.message
            });
            this.pageQueryRole(values,pageNum,pageSize);
            this.roleTotalCount(values)
        }else{
            notification.open({
                message:"编辑失败",
                description:result.message
            });
        }
    }

}
