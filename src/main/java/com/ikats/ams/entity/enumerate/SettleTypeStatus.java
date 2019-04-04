package com.ikats.ams.entity.enumerate;

/**
 * @Author: jz
 * @Date: Created in 13:13 2017/9/15
 * @Description:
 * 现结 0
 * 月结 1
 */
public enum SettleTypeStatus {

    //现结
    CASH("0"),

    //月结
    MONTHLY("1");

    private SettleTypeStatus(String value)
    {
        this.value = value;
    }

    private String value;

    public String getValue()
    {
        return value;
    }
}
