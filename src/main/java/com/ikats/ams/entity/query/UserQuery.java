package com.ikats.ams.entity.query;

import com.ikats.ams.entity.UserBean;
import com.ikats.common.entity.Query;

import java.io.Serializable;

public class UserQuery extends Query<UserBean> implements Serializable {
    private static final long serialVersionUID = -1L;

    private Integer roleId;

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }
}
