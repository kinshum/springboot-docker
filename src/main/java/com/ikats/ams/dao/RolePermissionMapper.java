package com.ikats.ams.dao;

import com.ikats.ams.entity.RolePermissionBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * @Author: jz
 * @Date: Created in 15:09 2017/9/26
 * @Description:
 */
@Mapper
public interface RolePermissionMapper {

    /** 添加单条记录 */
    int insert(RolePermissionBean record);

    /** 添加一批记录 */
    int insertList(List<RolePermissionBean> records);

    /** 删除记录 - 根据主键 */
    int deleteByKey(Long id);

    /** 更新记录 - 根据主键 */
    int updateByKey(RolePermissionBean record);

    /** 查询记录 - 根据主键 */
    RolePermissionBean selectByKey(Long id);

    /** 筛选记录 */
    List<RolePermissionBean> selectByQuery(@Param("express") Map<String, String> express);

    /** 删除记录 - 根据roleId */
    int deleteByRoleId(Long roleId);
}
