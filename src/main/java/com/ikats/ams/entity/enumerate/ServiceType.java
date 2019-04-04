package com.ikats.ams.entity.enumerate;

/**
 * @Author: jz
 * @Date: Created in 10:21 2017/8/11
 * @Description:
 * 1=>采购
 * 2=>清关
 * 3=>仓储
 * 4=>物流
 * 5=>分销
 * 6=>干线
 * 7=>派送
 */
public enum ServiceType {
   //采购
    PURCHASER("1")
    //清关
    , CUSTOMS("2")
    //仓储
    , WAREHOUSE("3")
    //物流
    ,LOGISTICS("4")
    //分销
    , DISTRIBUTION("5")
    //干线
    ,MAIN_LINE("6")
    //派送
    ,SEND("7")
    //分销
    , DISTRIBUTION_CHANNEL("8");

    private ServiceType(String value) {
        this.value = value;
    }

    private String value;

    public String getValue() {
        return value;
    }
}
