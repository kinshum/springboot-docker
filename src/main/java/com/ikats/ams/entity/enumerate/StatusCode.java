package com.ikats.ams.entity.enumerate;

/**
 * @Date: Created in 16:36 2017/11/7
 * @Description:
 */
public enum StatusCode {
    //添加
    INFO_NO_INSERT("INFO_NO_INSERT","没有新增"),
    ERROR_INSERT("ERROR_INSERT","添加错误"),

    //修改
    INFO_NO_UPDATE("INFO_NO_UPDATE","没有更新"),
    ERROR_UPDATE("ERROR_UPDATE","更新错误"),

    //删除
    INFO_NO_DELETE("INFO_NO_DELETE","没有删除"),
    ERROR_DELETE("ERROR_DELETE","删除错误"),

    //筛选
    INFO_NO_QUERY("INFO_NO_QUERY","没有找到"),
    ERROR_QUERY("ERROR_QUERY","获取错误"),

    //登陆失败
    INFO_LOGIN_FALUER("INFO_LOGIN_FALUER","登陆失败"),

    //唯一验证
    INFO_EXIST("INFO_EXIST","已存在"),

    INFO_NO_EXIST("INFO_NO_EXIST","可以使用"),

    /**
     *  特殊的返回附加信息
     * */
    INFO_DELETE_ORG("INFO_DELETE_ORG","该组织下存在服务,无法删除"),
    INFO_DELETE_SUPPLIERS("INFO_DELETE_SUPPLIERS","该供应商下存在服务,无法删除"),
    INFO_DELETE_CUSTOMER("INFO_DELETE_CUSTOMER","该客户下存在服务,无法删除"),
    INFO_AUDIT_MODIFY_PROHIBITED("INFO_AUDIT_MODIFY_PROHIBITED","已审批,禁止修改"),
    INFO_CONFIRM_EXIST_PWD("INFO_CONFIRM_EXIST_PWD","请确认旧密码,新密码,以及确认密码都已输入"),
    INFO_OLD_PWD("INFO_OLD_PWD","旧密码输入错误"),
    INFO_NEW_PWD("INFO_NEW_PWD","抱歉，新密码输入不一致"),
    INFO_NO_MODIFY_PWD("INFO_NO_MODIFY_PWD","密码没有改动"),
    INFO_USER_PWD("INFO_USER_PWD","用户名与密码不一致"),
    INFO_USER_NO_EXIST("INFO_USER_NO_EXIST","该用户不存在"),
    INFO_USER_LOCKING("INFO_USER_LOCKING","该用户被锁定"),
    INFO_ACCOUNT_NUM_INVALID("INFO_ACCOUNT_NUM_INVALID","账号无效"),
    INFO_NO_ORG_USER("INFO_NO_ORG_USER","非组织用户"),;

    private StatusCode(String value,String name)
    {
        this.value = value;
        this.name = name;
    }

    private String value;

    private String name;

    public String getValue()
    {
        return value;
    }

    public String getName()
    {
        return name;
    }
}