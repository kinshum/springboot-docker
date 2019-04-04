package com.ikats.ams.dao;

import com.ikats.ams.entity.UserRoleBean;
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
public interface UserRoleMapper
{
    /** 保存单条记录 */
    int insert(UserRoleBean record);

    /** 添加一批记录 */
    int insertList(List<UserRoleBean> records);

    /** 删除记录 - 根据主键 */
    int delete(Long id);

    /** 删除记录 - 根据主键 */
    int deleteByUid(Long userId);

    List<UserRoleBean> selectByUserId(Long userId);

    int updateByUid(UserRoleBean bean);

    List<UserRoleBean> selectByQuery(@Param("express") Map<String, String> express);

}
