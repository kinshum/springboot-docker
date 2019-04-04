package com.ikats.ams.entity.query;

import com.ikats.ams.entity.UserBean;
import com.ikats.ams.entity.WarehouseBean;
import com.ikats.common.entity.Query;

import java.io.Serializable;


public class WarehouseQuery extends Query<WarehouseBean> implements Serializable {

    private static final long serialVersionUID = 1L;

    private UserBean userBean;

    public UserBean getUserBean() {
        return userBean;
    }

    public void setUserBean(UserBean userBean) {
        this.userBean = userBean;
    }
}