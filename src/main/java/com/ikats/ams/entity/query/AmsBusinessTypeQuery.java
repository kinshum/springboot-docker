package com.ikats.ams.entity.query;



import com.ikats.ams.entity.AmsBusinessTypeBean;
import com.ikats.ams.entity.UserBean;
import com.ikats.common.entity.Query;

import java.io.Serializable;

/**
 * @Author: jz
 * @Date: Created in 9:46 2017/9/8
 * @Description:
 */
public class AmsBusinessTypeQuery extends Query<AmsBusinessTypeBean> implements Serializable {
    private static final long serialVersionUID = 1L;

    private UserBean userBean;

    public UserBean getUserBean() {
        return userBean;
    }

    public void setUserBean(UserBean userBean) {
        this.userBean = userBean;
    }
}
