package com.ikats.ams.entity.enumerate;

/**
 * 菜单类型的枚举
 */
public enum PermissionStatus {

    ADD_SERVICE("添加服务", "CmsService/insert.action")
    ,MODIFY_SERVICE("编辑服务", "CmsService/update.action")
    ,REMOVE_SERVICE("删除服务", "CmsService/delete.action")
    ,PURCHASE_SERVICE_ADD_SUPPLIER("采购服务关联供应商下的服务", "ServiceSelf/insertList.action")
    ,WAREHOUSE_SERVICE_ADDS_WAREHOUSE("仓储服务添加子仓库", "CmsService/insert.action")

    ,ADD_SUPPLIER("添加供应商","Organization/insertSuppliers.action")
    ,MODIFY_SUPPLIER("编辑供应商","Organization/modifySuppliers.action")
    ,REMOVE_SUPPLIER("删除供应商","Organization/deleteSuppliers.action")
    ,ADD_SERVICE_SUPPLIERS("供应商添加服务","CmsService/addServiceSuppliers.action")
    ,MODIFY_SERVICE_SUPPLIERS("供应商编辑服务","CmsService/modifyServiceSuppliers.action")
    ,REMOVE_SERVICE_SUPPLIERS("供应商删除服务","CmsService/deleteServiceSuppliers.action")

    ,ADD_CUSTOMER("添加客户","Organization/insertCustomer.action")
    ,MODIFY_CUSTOMER("修改客户","Organization/modifyCustomer.action")
    ,REMOVE_CUSTOMER("删除客户","Organization/deleteCustomer.action")
    ,ADD_SERVICE_CUSTOMER("客户添加服务","CmsService/addServiceCustomer.action")
    ,MODIFY_SERVICE_CUSTOMER("客户编辑服务","CmsService/modifyServiceCustomer.action")
    ,REMOVE_SERVICE_CUSTOMER("客户删除服务","CmsService/deleteServiceCustomer.action")
    ,ADD_USER_CUSTOMER("客户下添加用户", "User/addCustomerUser.action")
    ,MODIFY_USER_CUSTOMER("客户下编辑用户", "User/modifyCustomerUser.action")
    ,REMOVE_USER_CUSTOMER("客户下删除用户", "User/Accesspermission.action")

    ,MODIFY_ORGANIZATION("编辑组织信息", "Organization/updateByKey.action")

    ,ADD_USER("用户管理添加用户", "User/addOrgUser.action")
    ,MODIFY_USER("用户管理编辑用户", "User/modifyOrgUser.action")
    ,REMOVE_USER("用户管理删除用户", "User/deleteOrgUser.action");

    private PermissionStatus(String name, String code) {
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
