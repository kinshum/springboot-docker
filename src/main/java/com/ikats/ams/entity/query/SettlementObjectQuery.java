package com.ikats.ams.entity.query;



import com.ikats.ams.entity.SettlementObjectBean;
import com.ikats.ams.entity.UserBean;
import com.ikats.common.entity.Query;

import java.io.Serializable;

/**
 * @Author: jz
 * @Date: Created in 16:05 2017/8/29
 * @Description:
 */
public class SettlementObjectQuery extends Query<SettlementObjectBean> implements Serializable {
    private static final long serialVersionUID = 1L;

    private UserBean userBean;

    public UserBean getUserBean() {
        return userBean;
    }

    public void setUserBean(UserBean userBean) {
        this.userBean = userBean;
    }
}
