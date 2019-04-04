package com.ikats.ams.entity;

import java.io.Serializable;


public class AmsRolePermissionBean implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;

    /** 角色id */
    private Long roleId;

    /** 权限id */
    private Long permissionId;

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getRoleId() {
        return roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    public Long getPermissionId() {
        return permissionId;
    }

    public void setPermissionId(Long permissionId) {
        this.permissionId = permissionId;
    }
}
