package com.ikats.ams.entity.query;


import com.ikats.ams.entity.AccountCategoryBean;
import com.ikats.ams.entity.UserBean;
import com.ikats.common.entity.Query;

import java.io.Serializable;
import java.util.List;


public class AccountCategoryQuery extends Query<AccountCategoryBean> implements Serializable {
    private static final long serialVersionUID = 1L;

    private String token;

    private UserBean userBean;

    private List<AccountCategoryBean> dataList;

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public UserBean getUserBean() {
        return userBean;
    }

    public void setUserBean(UserBean userBean) {
        this.userBean = userBean;
    }

    public List<AccountCategoryBean> getDataList() {
        return dataList;
    }

    public void setDataList(List<AccountCategoryBean> dataList) {
        this.dataList = dataList;
    }
}
