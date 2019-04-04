package com.ikats.ams.entity.query;


import com.ikats.ams.entity.AmsUserRoleBean;
import com.ikats.ams.entity.UserBean;
import com.ikats.common.entity.Query;

import java.io.Serializable;


public class AmsUserRoleQuery extends Query<AmsUserRoleBean> implements Serializable
{
    private UserBean userBean;

    private static final long serialVersionUID = -7669769101531385014L;

    public UserBean getUserBean() {
        return userBean;
    }

    public void setUserBean(UserBean userBean) {
        this.userBean = userBean;
    }
}
