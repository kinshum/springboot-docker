package com.ikats.ams.dao;


import com.ikats.ams.entity.AmsRoleBean;
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
public interface AmsRoleMapper {
    /** 保存单条记录 */
    int insert(AmsRoleBean record);

    /** 添加一批记录 */
    int insertList(List<AmsRoleBean> records);

    /** 删除记录 - 根据主键 */
    int deleteByKey(Long id);

    /** 更新记录 - 根据主键 */
    int updateByKey(AmsRoleBean record);

    /** 查询记录 - 根据主键 */
    AmsRoleBean selectByKey(Long id);

    /** 查询记录数量 */
    Long selectCount(@Param("express") Map<String, String> express);

    /** 查询当前用户的组织角色*/
    List<AmsRoleBean> selectAllByOrg(@Param("express") Map<String, String> express);

    /** 分页查询 */
    List<AmsRoleBean> pageByQuery(@Param("pageNum") int pageNum, @Param("pageSize") int pageSize, @Param("express") Map<String, String> express);

    /**  */
    List<AmsRoleBean> findRoleByUid(Long userId);
}
