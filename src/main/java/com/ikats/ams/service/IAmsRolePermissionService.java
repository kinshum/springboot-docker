package com.ikats.ams.service;


import com.ikats.ams.entity.dto.AmsRolePermissionDTO;
import com.ikats.ams.entity.query.AmsRolePermissionQuery;

public interface IAmsRolePermissionService {

    /**
     * 服务接口:添加许可and角色关系表
     *
     * @param query
     * @return AmsRolePermissionDTO
     */
    AmsRolePermissionDTO insert(AmsRolePermissionQuery query);

    /**
     * 服务接口:多行添加许可and角色关系表
     *
     * @param query
     * @return AmsRolePermissionDTO
     */
    AmsRolePermissionDTO insertList(AmsRolePermissionQuery query);

    /**
     * 服务接口:删除许可and角色关系表
     *
     * @param query
     * @return AmsRolePermissionDTO
     */
    AmsRolePermissionDTO deleteByKey(AmsRolePermissionQuery query);

    /**
     * 服务接口:删除角色所有权限
     *
     * @param query
     * @return AmsRolePermissionDTO
     */
    AmsRolePermissionDTO clearEmpowerment(AmsRolePermissionQuery query);

    /**
     * 服务接口:更新许可and角色关系表
     *
     * @param query
     * @return AmsRolePermissionDTO
     */
    AmsRolePermissionDTO modifyEmpowerment(AmsRolePermissionQuery query);

    /**
     * 服务接口:获取单行许可and角色关系表
     *
     * @param query
     * @return AmsRolePermissionDTO
     */
    AmsRolePermissionDTO selectByKey(AmsRolePermissionQuery query);

    /**
     * 服务接口:查询许可and角色关系表
     *
     * @param query
     * @return AmsRolePermissionDTO
     */
    AmsRolePermissionDTO selectByQuery(AmsRolePermissionQuery query);

    /**
     * 服务接口:根据角色和权限id删除关联
     *
     * @param query
     * @return AmsRolePermissionDTO
     */
    AmsRolePermissionDTO removeEmpowerment(AmsRolePermissionQuery query);
}
