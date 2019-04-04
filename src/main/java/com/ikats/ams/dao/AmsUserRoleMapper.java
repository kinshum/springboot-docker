package com.ikats.ams.dao;


import com.ikats.ams.entity.AmsUserRoleBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * Mapper
 * 
 * oms_subject数据操作接口
 */

@Mapper
public interface AmsUserRoleMapper {
    /** 保存单条记录 */
    int insert(AmsUserRoleBean record);

    /** 添加一批记录 */
    int insertList(List<AmsUserRoleBean> records);

    /** 删除记录 - 根据主键 */
    int delete(Long id);

    /** 删除记录 - 根据主键 */
    int deleteByUid(Long userId);

    List<AmsUserRoleBean> selectByUserId(Long userId);

    int updateByUid(AmsUserRoleBean bean);

    List<AmsUserRoleBean> selectByQuery(@Param("express") Map<String, String> express);

}
