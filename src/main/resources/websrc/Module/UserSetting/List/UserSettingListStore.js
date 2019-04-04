import { observable, action } from "mobx";
import {notification} from 'antd';
import UserService from "../../../Service/UserSettingListService";


export default class UserSettingListStore {

    @observable loading;
    @observable userDataTable;
    @observable totalCount;
    @observable roleDataTable;
    @observable roleDataRow;

    constructor() {
        this.loading = false;
        this.userDataTable = [];
        this.totalCount = 0;
        this.roleDataTable = [];
        this.roleDataRow = {};
    }

    @action
    async selectUsers(values,pages)
    {
        let data={
            express:values,
            ...pages
        };
        this.loading = true;
        let result = await UserService.selectUsers(data);
        this.userDataTable = result.dataTable;
        this.loading = false;
    }

    @action
    async userTotalCount(values){
        let data = {express:{...values}};
        let result = await UserService.userTotalCount(data);
        this.totalCount = result.count?result.count:0;
    }

    @action
    async getMyOrgRole(values) {
        let result = await UserService.getMyOrgRole(values);
        this.roleDataTable = result.dataTable?result.dataTable:[];
    }
    @action
    async addUserRole(dataRow) {
        let data = {dataRow:dataRow}
        let result = await UserService.addUserRole(data);
        if(result.success){
            notification.open
            ({
                message: '角色设置成功',
                description: result.message
            });
        }else{
            notification.open
            ({
                message: '角色设置失败！',
                description: result.message
            });
        }
    }
    @action
    async findRoleByUid(data) {
        let result = await UserService.findRoleByUid(data);
        this.roleDataRow = result.dataTable[0]?result.dataTable[0]:{};
    }
    @action
    async getMyOrgRole(values) {
        let result = await UserService.getMyOrgRole(values);
        this.roleDataTable = result.dataTable?result.dataTable:[];
    }
}