import api from '../Common/WebAPI';

export default class UserService
{
    static selectUsers(data)
    {
        let result = api("/User/selectAllByQuery.action",data);
        return result;
    }
    static userTotalCount(data)
    {
        let result = api("/User/selectCountByOrgId.action",data);
        return result;
    }
    //查询角色
    static getMyOrgRole(data)
    {
        let result = api("/AmsRole/getMyOrgRole.action",data);
        return result;
    }
    //获取单个用户下的角色
    static findRoleByUid(data)
    {
        let result = api("/AmsRole/findRoleByUid.action",data);
        return result;
    }
    //给用户赋角色，带编辑
    static addUserRole(data)
    {
        let result = api("/AmsUserRole/addUserRole.action",data);
        return result;
    }
}