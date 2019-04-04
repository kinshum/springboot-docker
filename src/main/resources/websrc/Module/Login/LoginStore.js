import { observable, action } from "mobx";
import {notification} from 'antd';
import LoginService from "../../Service/LoginService";

export default class LoginStore {
    @observable loading;
    constructor() {
        this.loading = false;
    }
    @action
    async login(values) {
        this.loading=true;
        let data={express:{...values}};
        let result=await LoginService.conLogin(data);
        this.loading=false;
        if(result.success==true) {
            window.location.hash='#Frame/myHome';
            localStorage.ikatsToken = result.token;
            localStorage.userId = result.dataRow.id;
            sessionStorage.active = 1;
            this.PermissionFun({userId:localStorage.userId})
        }
        else {
            notification.error({
                message: '登录失败',
                description: '用户名或密码错误'
            });
        }
    }
    @action
    async PermissionFun(data) {
        this.loading = true;
        let resultAMS = await LoginService.AMSPermissionFun({});//获取所有的接口
        let resultgetAMS = await LoginService.getAMSPermission(data);//获取AMS权限
        this.permissionsDataTableAMS = resultAMS.treeDate;
        if(resultAMS.success) {
            localStorage.permissionsAMS = JSON.stringify(resultAMS.treeDate);
        }
        this.loading = false;
    }
}