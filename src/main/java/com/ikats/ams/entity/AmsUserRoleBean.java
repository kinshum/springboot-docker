package com.ikats.ams.entity;

import java.io.Serializable;

public class AmsUserRoleBean implements Serializable {

    private static final long serialVersionUID = 5422831695287274599L;

    private Integer id;

    private Long userId;

    private Long roleId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getRoleId() {
        return roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }
}
