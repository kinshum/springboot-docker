package com.ikats.common.config;


public class Constants {

    /**
     * 存放Authorization的header字段
     */
    public static final String AUTHORIZATION = "ikats-ChiGoose-token";

    public static String PERMISSION = "permission";

    // expireTime 以秒为单位
    public static Long expireTime = 1800L;

    //权限存在时间
    public static Long permissionTime=43200L;

    public static String redisUser = Constant.REDIS_USERBEAN;

}
