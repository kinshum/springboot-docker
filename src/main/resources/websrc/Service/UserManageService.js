import api from '../Common/WebAPI';

export default class UserManageService
{
    static UsersAdd(values)
    {
        let data={...values};
        let result = api("/AmsUsers/insert.action",data);
        return result;
    }
    //获取全部、分页
    static UsersQuery(values,page)
    {
        let data={
            express:{...values},
            page:{...page}
        };
        let result = api("/AmsUsers/pageByQuery.action",data);
        return result;
    }
    //获取单条
    static UsersSelectByKey(values)
    {
        let data={...values};
        let result = api("/AmsUsers/selectByKey.action",data);
        return result;
    }
    static UsersEdit(values)
    {
        let data={...values};
        let result = api("/AmsUsers/update.action",data);
        return result;
    }
    static UsersDel(values)
    {
        let data={...values};
        let result = api("/AmsUsers/delete.action",data);
        return result;
    }
}