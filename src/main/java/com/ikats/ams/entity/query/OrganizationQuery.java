package com.ikats.ams.entity.query;


import com.ikats.ams.entity.OrganizationBean;
import com.ikats.ams.entity.UserBean;
import com.ikats.common.entity.Query;

import java.io.Serializable;

public class OrganizationQuery extends Query<OrganizationBean> implements Serializable {

    private static final long serialVersionUID = -3400334303726013688L;

    private UserBean userBean;

    public UserBean getUserBean() {
        return userBean;
    }

    public void setUserBean(UserBean userBean) {
        this.userBean = userBean;
    }
}
