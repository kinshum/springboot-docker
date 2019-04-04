import api from '../Common/WebAPI';

export default class BusinessTypeService
{
    static BusinessTypeAdd(data)
    {
        let result = api("/AmsBusinessType/insert.action",data);
        return result;
    }
    //获取全部、分页
    static BusinessTypeQuery(data)
    {
        let result = api("/AmsBusinessType/pageByQuery.action",data);
        return result;
    }
    //获取分页总数
    static BusinessTotalCount(data)
    {
        let result = api("/AmsBusinessType/selectCountByOrgId.action",data);
        return result;
    }
    //获取单条
    static BusinessTypeSelectByKey(data)
    {
        let result = api("/AmsBusinessType/selectByKey.action",data);
        return result;
    }
    static BusinessTypeEdit(data)
    {
        let result = api("/AmsBusinessType/update.action",data);
        return result;
    }
    static BusinessTypeDel(data)
    {
        let result = api("/AmsBusinessType/delete.action",data);
        return result;
    }
    //验证业务类型名称唯一
    static BusinessOnlyOne(data)
    {
        let result = api("/AmsBusinessType/onlyOne.action",data);
        return result;
    }
}