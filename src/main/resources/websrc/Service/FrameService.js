import api from '../Common/WebAPI';

export default class FrameService
{
    static updatePassword(data)
    {
        let result = api("/User/updatePassword.action",data);
        return result;
    }

    static getService()
    {
        let result = api("CmsService/pageByQuery.action",{express:{}});
        return result;
    }
    static getUser(data)
    {
        let result = api("/User/user.action",data);
        return result;
    }
    static accountSelect(data)
    {
        let result = api("/account/selectAll.action",data);
        return result;
    }
    static layOut(data)
    {
        let result = api("/User/layOut.action",data);
        return result;
    }
}