package com.ikats.ams.dao;

import com.ikats.ams.entity.ClassifyBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;


/**
 * Mapper
 * <p>
 * 税费表数据操作接口
 */

@Mapper
public interface ClassifyMapper {

    /**
     * 查询记录 - 根据主键
     */
    ClassifyBean selectByKey(Integer id);

    /**
     * 查询所有记录
     */
    List<ClassifyBean> selectAll();

    /**
     * 查询总记录条数
     */
    Long selectCount(@Param("express") Map<String, String> express);

    /**
     * 查询所有记录
     */
    List<ClassifyBean> selectAllByQuery(@Param("express") Map<String, String> express);

    /**
     * 查询所有记录
     */
    List<ClassifyBean> pageByQuery(@Param("pageNum") int pageNum, @Param("pageSize") int pageSize, @Param("express") Map<String, String> express);
}
