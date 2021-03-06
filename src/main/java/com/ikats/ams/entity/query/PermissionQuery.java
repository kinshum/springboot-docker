package com.ikats.ams.entity.query;

import com.ikats.ams.entity.PermissionBean;
import com.ikats.ams.entity.UserBean;
import com.ikats.common.entity.Query;

import java.io.Serializable;

public class PermissionQuery extends Query<PermissionBean> implements Serializable {

    private static final long serialVersionUID = 1L;

    private UserBean userBean;

    public UserBean getUserBean() {
        return userBean;
    }

    public void setUserBean(UserBean userBean) {
        this.userBean = userBean;
    }
}
