package com.ikats.ams.entity.query;


import com.ikats.ams.entity.*;
import com.ikats.common.entity.Query;

import java.io.Serializable;

public class APIQuery extends Query<APIBean> implements Serializable {

    private static final long serialVersionUID = 1L;

    //账套
    private AccountBean Account;

    //结算对象
    private SettlementObjectBean SettlementObject;

    //收支明细
    private AccountitemBean accountitem;

    private UserBean userBean;

    public AccountBean getAccount() {
        return Account;
    }

    public void setAccount(AccountBean account) {
        Account = account;
    }

    public SettlementObjectBean getSettlementObject() {
        return SettlementObject;
    }

    public void setSettlementObject(SettlementObjectBean settlementObject) {
        SettlementObject = settlementObject;
    }

    public AccountitemBean getAccountitem() {
        return accountitem;
    }

    public void setAccountitem(AccountitemBean accountitem) {
        this.accountitem = accountitem;
    }

    public UserBean getUserBean() {
        return userBean;
    }

    public void setUserBean(UserBean userBean) {
        this.userBean = userBean;
    }
}
