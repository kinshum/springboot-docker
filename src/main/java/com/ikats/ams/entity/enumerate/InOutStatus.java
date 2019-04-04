package com.ikats.ams.entity.enumerate;

/**
 * @Author: jz
 * @Date: Created in 15:40 2017/9/5
 * @Description:
 *  收入支出:I-收入;O-支出
 */
public enum InOutStatus {
    //收入
    REVENUE("1"),

    //支出
    DISBURSEMENT("0");

    private InOutStatus(String value)
    {
        this.value = value;
    }

    private String value;

    public String getValue()
    {
        return value;
    }
}