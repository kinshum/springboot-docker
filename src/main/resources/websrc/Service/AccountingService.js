import api from '../Common/WebAPI';

export default class AccountingService {
    static pageByQueryAccount(data) {
        let result = api("/Accountitem/pageByQuery.action", data);
        return result;
    }
    static AccountTotalCount(data) {
        let result = api("/Accountitem/selectCountByOrgId.action", data);
        return result;
    }

    static BuildAccount(data) {
        let result = api("/Accountitem/pageByQuery.action", data);
        return result;
    }
    static insertAccount(data) {
        let result = api("/Accountitem/insert.action", data);
        return result;
    }
    static selectAccount(data) {
        let result = api("/Accountitem/selectByKey.action", data);
        return result;
    }
    static updateAccount(data) {
        let result = api("/Accountitem/update.action", data);
        return result;
    }
    static deleteAccount(data) {
        let result = api("/Accountitem/delete.action", data);
        return result;
    }
    static AccountCategory(data) {
        let result = api("/AccountCategory/pageByQuery.action", data);
        return result;
    }
    static buildBill(data) {
        let result = api("/bill/insert.action", data);
        return result;
    }
    static checkAccount(data) {
        let result = api("/Accountitem/audit.action", data);
        return result;
    }
    static accountObj(data) {
        let result = api("/SettlementObject/pageByQuery.action", data);
        return result;
    }
    static accountCurrency(data) {
        let result = api("/account/selectAll.action", data);
        return result;
    }
    static accountGetrate(data) {
        let result = api("/Accountitem/getrate.action", data);
        return result;
    }
    static businessType(data) {
        let result = api("/AmsBusinessType/pageByQuery.action", data);
        return result;
    }
    static treeDate(data) {
        let result = api("/AccountCategory/treedate.action", data);
        return result;
    }
    static deleteFiles(data)
    {
        let result = api("AmsAttachment/delete.action",data);
        return result;
    }
    static delLocalAttachment(file)
    {
        let result = api("/AmsAttachment/deleteLocal.action",file);
        return result;
    }
    static insertList(data)
    {
        let result = api("Accountitem/insertList.action",data);
        return result;
    }



}