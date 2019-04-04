package com.ikats.ams.service;


import com.ikats.ams.entity.dto.AmsPermissionDTO;
import com.ikats.ams.entity.dto.PermissionDTO;
import com.ikats.ams.entity.query.AmsPermissionQuery;

public interface IAmsPermissionService {
    /**
     * 服务接口:添加许可/权限
     *
     * @param query
     * @return AmsPermissionDTO
     */
    AmsPermissionDTO insert(AmsPermissionQuery query);

    /**
     * 服务接口:多行添加许可/权限
     *
     * @param query
     * @return AmsPermissionDTO
     */
    AmsPermissionDTO insertList(AmsPermissionQuery query);

    /**
     * 服务接口:删除许可/权限
     *
     * @param query
     * @return AmsPermissionDTO
     */
    AmsPermissionDTO deleteByKey(AmsPermissionQuery query);

    /**
     * 服务接口:更新许可/权限
     *
     * @param query
     * @return AmsPermissionDTO
     */
    AmsPermissionDTO updateByKey(AmsPermissionQuery query);

    /**
     * 服务接口:获取单行许可/权限
     *
     * @param query
     * @return AmsPermissionDTO
     */
    AmsPermissionDTO selectByKey(AmsPermissionQuery query);

    /**
     * 服务接口:查询许可/权限
     *
     * @param query
     * @return AmsPermissionDTO
     */
    AmsPermissionDTO selectByQuery(AmsPermissionQuery query);

    /**
     * 服务接口:根据用户id获取所有许可/权限
     *
     * @param query
     * @return AmsPermissionDTO
     */
    AmsPermissionDTO findPermissionListByUserId(AmsPermissionQuery query);

    /**
     * 服务接口:获取权限菜单
     *
     * @param query
     * @return AmsPermissionDTO
     */
    AmsPermissionDTO getPermissionMenu(AmsPermissionQuery query);

    /**
     * 服务接口:获取功能权限
     *
     * @param query
     * @return AmsPermissionDTO
     */
    AmsPermissionDTO getFunctionPermission(AmsPermissionQuery query);

    /**
     * 服务接口:根据角色id获取权限
     *
     * @param query
     * @return AmsPermissionDTO
     */
    AmsPermissionDTO findPermissionListByRoleId(AmsPermissionQuery query);
}
