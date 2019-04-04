import api from '../Common/WebAPI';

export default class SettlementService
{
    static SettlementAdd(data)
    {
        let result = api("/SettlementObject/insert.action",data);
        return result;
    }
    //获取全部、分页
    static SettlementQuery(data)
    {
        let result = api("/SettlementObject/pageByQuery.action",data);
        return result;
    }
    //获取分页总数
    static SettlementTotalCount(data)
    {
        let result = api("/SettlementObject/selectCountByOrgId.action",data);
        return result;
    }

    //获取单条
    static SettlementSelectByKey(data)
    {
        let result = api("/SettlementObject/selectByKey.action",data);
        return result;
    }
    static SettlementEdit(data)
    {
        let result = api("/SettlementObject/update.action",data);
        return result;
    }
    //国家
    static selectCountry(data)
    {
        let result = api("/Sales/selectAllByQuery.action",data);
        return result;
    }
    //验证结算对象编码唯一
    static SettlementOnlyOne(data)
    {
        let result = api("/SettlementObject/onlyOne.action",data);
        return result;
    }
    //验证结算对象名称唯一
    static SettlementOnlyOneName(data)
    {
        let result = api("/SettlementObject/onlyOneName.action",data);
        return result;
    }
}