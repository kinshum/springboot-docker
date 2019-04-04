package com.ikats.ams.dao;

import com.ikats.ams.entity.CustomsClearanceBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;


import java.util.List;
import java.util.Map;

/**
 * @Author: jz
 * @Date: Created in 11:12 2017/8/4
 * @Description:
 */
@Mapper
public interface CustomsClearanceMapper {
    /**
     * 添加单条记录
     */
    int insert(CustomsClearanceBean record);

    /**
     * 删除记录 - 根据主键
     */
    int deleteByKey(Integer id);

    /**
     * 更新记录 - 根据主键
     */
    int updateByKey(CustomsClearanceBean record);

    /**
     * 查询记录 - 根据主键
     */
    CustomsClearanceBean selectByKey(Integer id);

    /**
     * 分页查询
     */
    List<CustomsClearanceBean> pageByQuery(@Param("pageNum") int pageNum, @Param("pageSize") int pageSize, @Param("express") Map<String, String> express);

    /**
     * 条件查询
     */
    List<CustomsClearanceBean> selectByQuery(@Param("express") Map<String, String> express);

    //查询记录总数
    Long selectCount(@Param("express") Map<String, String> express);

    //根据serviceId删除
    int deleteServiceId(String serviceId);
}
