package com.ikats.ams.entity.dto;


import com.ikats.ams.entity.OrganizationBean;
import com.ikats.ams.entity.UserBean;
import com.ikats.common.entity.OutDTO;

import java.io.Serializable;


public class UserDTO extends OutDTO<UserBean> implements Serializable
{
    private static final long serialVersionUID = -1L;

    private OrganizationBean org;

    public OrganizationBean getOrg() {
        return org;
    }

    public void setOrg(OrganizationBean org) {
        this.org = org;
    }
}
