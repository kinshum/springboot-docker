import { observable, action } from "mobx";
import {notification} from 'antd';
import FrameService from '../../Service/FrameService';

export default class FrameStore {

    @observable loading;
    //@observable passWordData;
    @observable serviceMenu;
    @observable userData;
    @observable accountData;

    constructor() {
        this.loading = false;
        //this.passWordData = {};
        this.serviceMenu = [];
        this.userData = {};
        this.accountData = {};
    }

    @action
    async updatePassword(values)
    {
        this.loading = true;
        let data={...values};
        let result = await FrameService.updatePassword(data);
        //this.passWordData = result.dataRow;
        this.loading = false;
        if(result.success==true)
         {
            notification.open
             ({
             message: '修改密码成功',
             description: result.message
             });
         }
         else
         {
             notification.open
             ({
                 message: '修改密码失败',
                 description: result.message
             });
         }
    }

    @action
    async getService()
    {
        this.loading = true;
        let result =  await FrameService.getService();
        this.serviceMenu = result.dataTable;
        this.loading = false;
    }

    @action
    async getUser(values)
    {
        this.loading = true;
        let data={express:{...values}};
        let result =  await FrameService.getUser(data);
        this.userData = result.dataRow;
        this.loading = false;
    }

    @action
    async accountSelect(values)
    {
        this.loading = true;
        let data={express:{...values}};
        let result =  await FrameService.accountSelect(data);
        this.accountData = result.dataTable[0]?result.dataTable[0]:{};
        this.loading = false;
    }

    @action
    async layOut(values)
    {
        let data={express:{...values}};
        let result =  await FrameService.layOut(data);
        if(result.success==true){
            localStorage.clear();
            sessionStorage.clear();
            location.hash = "Login";
        }
    }
}
