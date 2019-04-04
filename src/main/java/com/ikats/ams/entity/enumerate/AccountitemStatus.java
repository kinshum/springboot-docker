package com.ikats.ams.entity.enumerate;

/**
 * @Author: jz
 * @Date: Created in 15:40 2017/9/1
 * @Description:
 * 失效/删除	DELETE  新增		NEW     已修改		MODIFY      已审核		AUDIT
 * 已生成账单	GENERATED_BILL  已开票		INVOICED    已结款		PAID
 */
public enum AccountitemStatus {
    //失效/删除
    DELETE("0"),

    //新增
    NEW("1"),

    //已修改
    MODIFY("2"),

    //已审核
    AUDIT("3"),

    //已生成账单
    GENERATED_BILL("4"),

    //已开票
    INVOICED("5"),

    //已结款
    PAID("6"),

    //未审核
    NOT_AUDIT("7"),

    //未生成账单
    NOT_GENERATED_BILL("8"),

    // 未结款
    NOT_PAID("9");

    private AccountitemStatus(String value)
    {
        this.value = value;
    }

    private String value;

    public String getValue()
    {
        return value;
    }
}