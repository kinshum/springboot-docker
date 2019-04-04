package com.ikats.ams.dao;

import com.ikats.ams.entity.AmsBusinessTypeBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * @Author: jz
 * @Date: Created in 9:49 2017/9/8
 * @Description:
 */
@Mapper
public interface AmsBusinessTypeMapper {

    /** 添加单条记录 */
    int insert(AmsBusinessTypeBean record);

    /** 删除记录 - 根据主键 */
    int delete(Long id);

    /** 更新记录 - 根据主键 */
    int update(AmsBusinessTypeBean record);

    /** 查询记录 - 根据主键 */
    AmsBusinessTypeBean selectByKey(Long id);

    /** 分页查询 */
    List<AmsBusinessTypeBean> pageByQuery(@Param("pageNum") int pageNum, @Param("pageSize") int pageSize, @Param("express") Map<String, String> express);

    /** 分页查询 */
    List<AmsBusinessTypeBean> selectByQuery(@Param("express") Map<String, String> express);

    /** 查询记录数量 */
    Long selectCount(@Param("express") Map<String, String> express);
}
