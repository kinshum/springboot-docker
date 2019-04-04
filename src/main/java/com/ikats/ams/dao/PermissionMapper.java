package com.ikats.ams.dao;

import com.ikats.ams.entity.PermissionBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * @Author: jz
 * @Date: Created in 13:56 2017/9/26
 * @Description:
 */
@Mapper
public interface PermissionMapper {

    /** 添加单条记录 */
    int insert(PermissionBean record);

    /** 添加一批记录 */
    int insertList(List<PermissionBean> records);

    /** 删除记录 - 根据主键 */
    int deleteByKey(Long id);

    /** 更新记录 - 根据主键 */
    int updateByKey(PermissionBean record);

    /** 查询记录 - 根据主键 */
    PermissionBean selectByKey(Long id);

    /** 筛选记录 */
    List<PermissionBean> selectByQuery(@Param("express") Map<String, String> express);

    /** 根据用户id获取此用户所有权限 */
    List<PermissionBean> findPermissionListByUserId(Long userId);

    /** 根据用户id获取此用户所有菜单权限 */
    List<PermissionBean> getPermissionMenu(Long userId);

    /** 根据用户id获取此用户所有功能权限 */
    List<PermissionBean> getFunctionPermission(Long userId);

    /** 根据roleId获取权限list */
    List<PermissionBean> findPermissionListByRoleId(Long roleId);
}
