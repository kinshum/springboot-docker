import api from '../Common/WebAPI';

export default class CostManageService
{
    static CostAdd(data)
    {
        let result = api("/AccountCategory/insert.action",data);
        return result;
    }
    //获取全部、分页
    static CostQuery(data)
    {
        let result = api("/AccountCategory/pageByQuery.action",data);
        return result;
    }
    //获取分页总数
    static CostTotalCount(data)
    {
        let result = api("/AccountCategory/selectCountByOrgId.action",data);
        return result;
    }

    static CostTree(values)
    {
        let result = api("/AccountCategory/pageByQuery.action",values);
        return result;
    }
    //获取单条
    static CostSelectByKey(data)
    {
        let result = api("/AccountCategory/selectByKey.action",data);
        return result;
    }
    static CostEdit(data)
    {
        let result = api("/AccountCategory/update.action",data);
        return result;
    }
    static AccountOnlyOneCode(data)
    {
        let result = api("/AccountCategory/onlyOneCode.action",data);
        return result;
    }
    static AccountOnlyOneName(data)
    {
        let result = api("/AccountCategory/onlyOneName.action",data);
        return result;
    }
}