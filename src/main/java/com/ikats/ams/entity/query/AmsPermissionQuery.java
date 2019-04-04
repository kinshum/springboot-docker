package com.ikats.ams.entity.query;


import com.ikats.ams.entity.AmsPermissionBean;
import com.ikats.ams.entity.UserBean;
import com.ikats.common.entity.Query;

import java.io.Serializable;

/**
 * @Author: jz
 * @Date: Created in 13:54 2017/9/26
 * @Description:
 */
public class AmsPermissionQuery extends Query<AmsPermissionBean> implements Serializable {

    private static final long serialVersionUID = 1L;

    private UserBean userBean;

    public UserBean getUserBean() {
        return userBean;
    }

    public void setUserBean(UserBean userBean) {
        this.userBean = userBean;
    }
}
