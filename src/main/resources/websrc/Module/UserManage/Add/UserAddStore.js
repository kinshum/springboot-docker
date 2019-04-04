import { observable, action } from "mobx";
import UserManageService from '../../../Service/UserManageService'

export default class UserAddStore {
    @observable loading;

    constructor() {
        this.loading = false;
    }

    @action
    async UsersAdd(values)
    {
        this.loading = true;
        let result = await UserManageService.UsersAdd(values);
        this.loading = false;
    }

}