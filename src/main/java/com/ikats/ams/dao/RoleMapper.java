package com.ikats.ams.dao;

import com.ikats.ams.entity.RoleBean;
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
public interface RoleMapper {
    /** 保存单条记录 */
    int insert(RoleBean record);

    /** 添加一批记录 */
    int insertList(List<RoleBean> records);

    /** 删除记录 - 根据主键 */
    int deleteByKey(Long id);

    /** 更新记录 - 根据主键 */
    int updateByKey(RoleBean record);

    /** 查询记录 - 根据主键 */
    RoleBean selectByKey(Long id);

    /** 查询记录数量 */
    Long selectCount(@Param("express") Map<String, String> express);

    /** 查询当前用户的组织角色*/
    List<RoleBean> selectAllByOrg(@Param("express") Map<String, String> express);

    /** 分页查询 */
    List<RoleBean> pageByQuery(@Param("pageNum") int pageNum, @Param("pageSize") int pageSize, @Param("express") Map<String, String> express);

    /**  */
    List<RoleBean> findRoleByUid(Long userId);
}
