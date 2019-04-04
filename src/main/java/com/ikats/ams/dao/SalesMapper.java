package com.ikats.ams.dao;

import com.ikats.ams.entity.SalesBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * Mapper
 * 
 * Sales数据操作接口
 */

@Mapper
public interface SalesMapper {

    /** 查询记录 - 根据主键 */
    SalesBean selectByKey(Long id);

    List<SalesBean> selectAllByQuery(@Param("express") Map<String, String> express);


}
