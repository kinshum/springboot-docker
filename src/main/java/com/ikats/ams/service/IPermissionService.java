package com.ikats.ams.service;


import com.ikats.ams.entity.dto.PermissionDTO;
import com.ikats.ams.entity.query.PermissionQuery;

public interface IPermissionService {
    /**
     * 服务接口:添加许可/权限
     *
     * @param query
     * @return PermissionDTO
     */
    PermissionDTO insert(PermissionQuery query);

    /**
     * 服务接口:多行添加许可/权限
     *
     * @param query
     * @return PermissionDTO
     */
    PermissionDTO insertList(PermissionQuery query);

    /**
     * 服务接口:删除许可/权限
     *
     * @param query
     * @return PermissionDTO
     */
    PermissionDTO deleteByKey(PermissionQuery query);

    /**
     * 服务接口:更新许可/权限
     *
     * @param query
     * @return PermissionDTO
     */
    PermissionDTO updateByKey(PermissionQuery query);

    /**
     * 服务接口:获取单行许可/权限
     *
     * @param query
     * @return PermissionDTO
     */
    PermissionDTO selectByKey(PermissionQuery query);

    /**
     * 服务接口:查询许可/权限
     *
     * @param query
     * @return PermissionDTO
     */
    PermissionDTO selectByQuery(PermissionQuery query);

    /**
     * 服务接口:根据用户id获取所有许可/权限
     *
     * @param query
     * @return PermissionDTO
     */
    PermissionDTO findPermissionListByUserId(PermissionQuery query);

    /**
     * 服务接口:获取权限菜单
     *
     * @param query
     * @return PermissionDTO
     */
    PermissionDTO getPermissionMenu(PermissionQuery query);

    /**
     * 服务接口:获取功能权限
     *
     * @param query
     * @return PermissionDTO
     */
    PermissionDTO getFunctionPermission(PermissionQuery query);

    /**
     * 服务接口:根据角色id获取权限
     *
     * @param query
     * @return PermissionDTO
     */
    PermissionDTO findPermissionListByRoleId(PermissionQuery query);
}
