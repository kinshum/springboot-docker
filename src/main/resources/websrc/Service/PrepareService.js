import api from '../Common/WebAPI';

export default class PrepareService
{
    static searchPrepareList(data)
    {
        let result = api("bill/pageByQuery.action",data);
        return result;
    }
    static billTotalCount(data)
    {
        let result = api("bill/selectCountByOrgId.action",data);
        return result;
    }

    //查询费用明细
    static searchPrepareByKey(data)
    {
        let result = api("Accountitem/pageByQuery.action",data);
        return result;
    }

    //查询所有结算对象
    static searchAllAccountObj(data)
    {
        let result = api("SettlementObject/selectByQuery.action",data);
        return result;
    }

    //账单审核
    static checkBill(data)
    {
        let result = api("bill/audit.action",data);
        return result;
    }

    //查询单条账单
    static selectBillByKey(data)
    {
        let result = api("bill/selectByKey.action",data);
        return result;
    }

    //修改对账单详情
    static modifyBillByKey(data)
    {
        let result = api("bill/modify.action",data);
        return result;
    }

    //导出
    static exportExcel(data)
    {
        let result = api("Accountitem/export.action",data);
        return result;
    }

    //导出后删除服务器上的内容；
    static deleteExcel(data)
    {

        let result = api("Accountitem/deleteExcel.action",data);
        return result;

    }
    //删除附件
    static deleteAttachment(data)
    {
        let result = api("AmsAttachment/delete.action",data);
        return result;
    }


}
