package com.ikats.ams.entity.query;



import com.ikats.ams.entity.AccountBean;
import com.ikats.ams.entity.UserBean;
import com.ikats.common.entity.Query;

import java.io.Serializable;

/**
 * Created by Administrator on
 */
public class AccountQuery extends Query<AccountBean> implements Serializable
{
    private static final long serialVersionUID = -1L;

    private UserBean userBean;

    public UserBean getUserBean() {
        return userBean;
    }

    public void setUserBean(UserBean userBean) {
        this.userBean = userBean;
    }
}
