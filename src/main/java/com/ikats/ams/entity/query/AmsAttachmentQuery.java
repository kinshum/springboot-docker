package com.ikats.ams.entity.query;


import com.ikats.ams.entity.AmsAttachmentBean;
import com.ikats.ams.entity.UserBean;
import com.ikats.common.entity.Query;

import java.io.Serializable;

/**
 * @Author: jz
 * @Date: Created in 9:38 2017/9/13
 * @Description:
 */
public class AmsAttachmentQuery extends Query<AmsAttachmentBean> implements Serializable {

    private static final long serialVersionUID = 1L;

    private UserBean userBean;

    public UserBean getUserBean() {
        return userBean;
    }

    public void setUserBean(UserBean userBean) {
        this.userBean = userBean;
    }
}
