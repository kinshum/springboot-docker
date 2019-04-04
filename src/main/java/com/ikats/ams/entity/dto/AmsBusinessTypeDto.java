package com.ikats.ams.entity.dto;



import com.ikats.ams.entity.AmsBusinessTypeBean;
import com.ikats.ams.entity.UserBean;
import com.ikats.common.entity.OutDTO;

import java.io.Serializable;

public class AmsBusinessTypeDto extends OutDTO<AmsBusinessTypeBean> implements Serializable {
    private static final long serialVersionUID = -1L;

    private UserBean user;

    public UserBean getUser() {
        return user;
    }

    public void setUser(UserBean user) {
        this.user = user;
    }

}
