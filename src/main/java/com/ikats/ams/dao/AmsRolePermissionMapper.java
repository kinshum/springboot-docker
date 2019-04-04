package com.ikats.ams.dao;


import com.ikats.ams.entity.AmsRolePermissionBean;
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
public interface AmsRolePermissionMapper {

    /** 添加单条记录 */
    int insert(AmsRolePermissionBean record);

    /** 添加一批记录 */
    int insertList(List<AmsRolePermissionBean> records);

    /** 删除记录 - 根据主键 */
    int deleteByKey(Long id);

    /** 更新记录 - 根据主键 */
    int updateByKey(AmsRolePermissionBean record);

    /** 查询记录 - 根据主键 */
    AmsRolePermissionBean selectByKey(Long id);

    /** 筛选记录 */
    List<AmsRolePermissionBean> selectByQuery(@Param("express") Map<String, String> express);

    /** 删除记录 - 根据roleId */
    int deleteByRoleId(Long roleId);
}
