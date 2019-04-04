package com.ikats.ams.entity.enumerate;

/**
 * @Author: jz
 * @Date: Created in 14:14 2017/8/2
 * @Description:
 */

public enum UserStatusType {
    //初始化状态
    INITIALIZE("I")
    //活动状态
    , ACTIVE("A")
    //禁用状态
    , DISABLE("D")
    //锁定状态
    , LOCKED("L");

    private UserStatusType(String value) {
        this.value = value;
    }

    private String value;

    public String getValue() {
        return value;
    }
}

