package com.ikats.ams.entity.dto;

import com.ikats.ams.entity.APIBean;
import com.ikats.ams.entity.UserBean;
import com.ikats.common.entity.OutDTO;

import java.io.Serializable;


public class APIDto extends OutDTO<APIBean> implements Serializable {

    private static final long serialVersionUID = -1L;

    private UserBean user;

    public UserBean getUser() {
        return user;
    }

    public void setUser(UserBean user) {
        this.user = user;
    }

//    //账套
//    private AccountBean Account;
//
//    //结算对象
//    private SettlementObjectBean SettlementObject;
//
//    //收支明细
//    private AccountitemBean accountitem;
//
//    public AccountBean getAccount() {
//        return Account;
//    }
//
//    public void setAccount(AccountBean account) {
//        Account = account;
//    }
//
//    public SettlementObjectBean getSettlementObject() {
//        return SettlementObject;
//    }
//
//    public void setSettlementObject(SettlementObjectBean settlementObject) {
//        SettlementObject = settlementObject;
//    }
//
//    public AccountitemBean getAccountitem() {
//        return accountitem;
//    }
//
//    public void setAccountitem(AccountitemBean accountitem) {
//        this.accountitem = accountitem;
//    }
}
