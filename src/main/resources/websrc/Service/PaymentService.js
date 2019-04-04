import api from '../Common/WebAPI';

export default class PaymentService {

    static searchAllAccountObj(data)
    {
        let result = api("SettlementObject/selectByQuery.action",data);
        return result;
    }
    static searchPaymentList(data)
    {
        let result = api("bill/pageByQuery.action",data);
        return result;
    }
    static paymentTotalCount(data)
    {
        let result = api("bill/selectCountByOrgId.action",data);
        return result;
    }
    static searchPaymentByKey(data)
    {
        // let sendData={...data};
        let result = api("Accountitem/pageByQuery.action",data);
        return result;
    }
    static drawInvoice(data)
    {
        let result = api("bill/invoiced.action",data);
        return result;
    }
    //核销
    static WriteOff(data)
    {
        let result = api("bill/paid.action",data);
        return result;
    }
    //查询单条账单
    static selectBillByKey(data)
    {
        let result = api("bill/selectByKey.action",data);
        return result;
    }

    //修改对账单beizhu
    static modifyBillByKey(data)
    {
        let result = api("bill/modify.action",data);
        return result;
    }
    //删除附件
    static deleteAttachment(data)
    {
        let result = api("AmsAttachment/delete.action",data);
        return result;
    }
    //验证发票
    static testOneBill(data)
    {
        let result = api("bill/onlyOne.action",data);
        return result;
    }

}