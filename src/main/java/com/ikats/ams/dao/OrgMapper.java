package com.ikats.ams.dao;

import com.ikats.ams.entity.OrgBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;


/**
 * Mapper
 * 
 * 省市县表数据操作接口
 *
 */

@Mapper
public interface OrgMapper {


    /** 保存单条记录 */
    int insert(OrgBean record);

    /** 更新记录 - 根据主键 */
    int updateByKey(OrgBean record);

    /** 查询记录 - 根据主键 */
    OrgBean selectByKey(Long id);

    /** 删除记录 - 根据主键 */
    int deleteByKey(Long id);

    List<OrgBean> selectAllByQuery(@Param("express") Map<String, String> express);
}
