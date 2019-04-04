package com.ikats.common.util;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * Json 换换工具类
 * @author shnejian26@hotmail.com
 * @date 2018/9/29 10:23
 */
public class JsonUtils {

    // 定义jackson对象
    private static final ObjectMapper MAPPER = new ObjectMapper();

    /**
     * 将对象转换成json字符串。
     * <p>Title: pojoToJson</p>
     * <p>Description: </p>
     * @param data
     * @return
     */
    public static String objectToJson(Object data) {
        try {
            String string = MAPPER.writeValueAsString(data);
            return string;
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 将json结果集转化为对象
     *
     * @param jsonData json数据
     * @param clazz 对象中的object类型
     * @return
     */
    public static <T> T jsonToPojo(String jsonData, Class<T> beanType) {
        try {
            T t = MAPPER.readValue(jsonData, beanType);
            return t;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        //return null;
    }

    /**
     * 将json数据转换成pojo对象list
     * <p>Title: jsonToList</p>
     * <p>Description: </p>
     * @param jsonData
     * @param beanType
     * @return
     */
    public static <T>List<T> jsonToList(String jsonData, Class<T> beanType) {
        JavaType javaType = MAPPER.getTypeFactory().constructParametricType(List.class, beanType);
        try {
            List<T> list = MAPPER.readValue(jsonData, javaType);
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }


    /**
     * @time 2019年2月28日 14:50:31
     * @author wpf
     * @param czbk 传入数据
     * @param map  传出数据 空 map
     */
    public static void entrySet(HashMap<String,Object> czbk,HashMap<String,String> map) {

        for (Map.Entry<String, Object> entry : czbk.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();

            if (value instanceof  HashMap) {
                entrySet((HashMap<String,Object>)value,map);
            }
            if (value instanceof  String) {
                //System.out.println(key+":"+value);
                map.put(key,value.toString());
            }
            if (value instanceof  Integer) {
                map.put(key,value.toString());
            }
            if (value instanceof  Double) {
                map.put(key,value.toString());
            }
            if (value instanceof  Float) {
                map.put(key,value.toString());
            }
        }


    }






}
