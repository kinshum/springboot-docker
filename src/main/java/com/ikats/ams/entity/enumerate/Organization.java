package com.ikats.ams.entity.enumerate;

/**
 * @Author:
 * @Date:
 * @Description:
 *组织里边的类型
 */
public enum Organization {
   //供应商
    SUPPLIER("1")
    //客户
    , CUSTOMER("2")
    //父级组织
    , PARENT("0");

    private Organization(String value) {
        this.value = value;
    }

    private String value;

    public String getValue() {
        return value;
    }
}
