import api from '../Common/WebAPI';

export default class LoginService
{
    static conLogin(data)
    {
        let result = api("/User/orgLogin.action",data);
        console.log(result)
        return result;
    }
    static AMSPermissionFun(data)
    {
        let result = api("AmsPermission/getFunctionPermission.action",data);
        return result;
    }
    static getAMSPermission(data)
    {
        let result = api("AmsPermission/splicingAMSPower.action",data);
        return result;
    }
}