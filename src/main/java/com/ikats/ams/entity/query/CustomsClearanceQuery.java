package com.ikats.ams.entity.query;


import com.ikats.ams.entity.CustomsClearanceBean;
import com.ikats.ams.entity.UserBean;
import com.ikats.common.entity.Query;

import java.io.Serializable;

public class CustomsClearanceQuery extends Query<CustomsClearanceBean> implements Serializable {

    private static final long serialVersionUID = 4669263005895462477L;

    private UserBean userBean;

    public UserBean getUserBean() {
        return userBean;
    }

    public void setUserBean(UserBean userBean) {
        this.userBean = userBean;
    }
}
