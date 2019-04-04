package com.ikats.ams.service;


import com.ikats.ams.entity.dto.AmsRoleDTO;
import com.ikats.ams.entity.query.AmsRoleQuery;

public interface IAmsRoleService {

    /**
     * 保存单条记录
     */
    AmsRoleDTO add(AmsRoleQuery query);

    /**
     * 批量添加
     */
    AmsRoleDTO batchAdd(AmsRoleQuery query);

    /**
     * 修改记录根据主键
     */
    AmsRoleDTO modifyRole(AmsRoleQuery query);

    /**
     * 修改记录根据主键
     */
    AmsRoleDTO removeRole(AmsRoleQuery query);

    /**
     * 根据主键id,获取用户
     */
    AmsRoleDTO getRole(AmsRoleQuery query);

    /**
     * 获取数量
     */
    AmsRoleDTO selectCountByOrgId(AmsRoleQuery query);

    /**
     * 查询当前用户的组织角色
     */
    AmsRoleDTO getMyOrgRole(AmsRoleQuery query);

    /**
     * 分页查询
     */
    AmsRoleDTO pageQueryRole(AmsRoleQuery query);

    /**
     * 根据用户id找到对应的角色
     */
    AmsRoleDTO findRoleByUid(AmsRoleQuery query);
}
