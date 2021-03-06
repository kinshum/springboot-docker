package com.ikats.ams.entity.query;


import com.ikats.ams.entity.RoleBean;
import com.ikats.ams.entity.UserBean;
import com.ikats.common.entity.Query;

import java.io.Serializable;


public class RoleQuery extends Query<RoleBean> implements Serializable {

    private static final long serialVersionUID = 3725791096122432240L;

    private UserBean userBean;

    public UserBean getUserBean() {
        return userBean;
    }

    public void setUserBean(UserBean userBean) {
        this.userBean = userBean;
    }
}
