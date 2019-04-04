package com.ikats.ams.entity.enumerate;

/**
 * 菜单类型的枚举
 */
public enum MenuStatus {

    MY_SERVICE("我的服务","newService")
    ,MY_SUPPLIER("我的供应商","supplierList")
    ,MY_CLIENT("我的客户","ConsumerList")
    ,ACCOUNT_SETTLEMENT("账户结算","Account")
    ,ORGANIZE_INFORMATION("组织信息","organizationDetail")
    ,USER_MANAGEMENT("用户管理","userList")
    ,RIGHTS_MANAGEMENT("权限管理","powerRole");

    private MenuStatus(String name,String code) {
        this.name = name;

        this.code = code;
    }

    private String name;

    private String code;

    public String getName() {
        return name;
    }

    public String getCode() {
        return code;
    }
}
