package com.ikats.ams.entity.query;



import com.ikats.ams.entity.AmsRoleBean;
import com.ikats.ams.entity.UserBean;
import com.ikats.common.entity.Query;

import java.io.Serializable;

/**
 * Created by Administrator on 2017/1/30.
 */
public class AmsRoleQuery extends Query<AmsRoleBean> implements Serializable
{
    private static final long serialVersionUID = 3725791096122432240L;

    private UserBean userBean;

    public UserBean getUserBean() {
        return userBean;
    }

    public void setUserBean(UserBean userBean) {
        this.userBean = userBean;
    }
}
