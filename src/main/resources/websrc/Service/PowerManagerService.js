import api from '../Common/WebAPI.js';

export default class PowerManagerService {
    static pageQueryRole(data)
    {
        let result = api("/AmsRole/pageQueryRole.action",data);
        return result;
    }
    static roleTotalCount(data)
    {
        let result = api("/AmsRole/selectCountByOrgId.action",data);
        return result;
    }
    static addRole(data)
    {
        let result = api("/AmsRole/add.action",data);
        return result;
    }
    static removeRole(data)
    {
        let result = api("/AmsRole/removeRole.action",data);
        return result;
    }
    static getRole(data)
    {
        let result = api("/AmsRole/getRole.action",data);
        return result;
    }
    static modifyRole(data)
    {
        let result = api("/AmsRole/modifyRole.action",data);
        return result;
    }
    static getPowerList(data)
    {
        let result = api("/AmsPermission/treeData.action",data);
        return result;
    }
    static getPowerById(data)
    {
        let result = api("/AmsPermission/findPermissionListByRoleId.action",data);
        return result;
    };
    //给角色赋权限
    static powerToRole(data)
    {
        let result = api("/AmsRolePermission/batchEmpowerment.action",data);
        return result;
    }
    static updatePower(data)
    {
        let result = api("/AmsRolePermission/modifyEmpowerment.action ",data);
        return result;
    }
}