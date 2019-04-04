package com.ikats.ams.entity.enumerate;

/**
 * @Author: jz
 * @Date: Created in 15:40 2017/9/5
 * @Description:
 * 账单状态:
 *  0 DELETE 删除/失效,
 *  1 NEW 新增,
 *  2 CONFIRM 已确认,
 *  3 INVOICED 已开票
 *  4 PAID 已结款
 */
public enum BillStatus {
    //失效/删除
    DELETE("0"),

    //新增
    NEW("1"),

    //已确认
    CONFIRM("2"),

    //已开票
    INVOICED("3"),

    //已结款
    PAID("4");

    private BillStatus(String value)
    {
        this.value = value;
    }

    private String value;

    public String getValue()
    {
        return value;
    }
}