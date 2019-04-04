package com.ikats.ams.entity.enumerate;

/**
 * @Author: jz
 * @Date: Created in 16:25 2017/8/13
 * @Description:
 */
public enum UserLevel {
    //超级管理员
    SUPER_ADMIN("S")
    //组织管理员
    ,ORDINARY_USER("A")
    //普通用户
    ,USER("U")

    ,AMDIN("管理员");

    private UserLevel(String value)
    {
        this.value = value;
    }

    private String value;

    public String getValue()
    {
        return value;
    }
}
