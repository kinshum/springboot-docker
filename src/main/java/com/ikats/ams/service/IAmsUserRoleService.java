package com.ikats.ams.service;

import com.ikats.ams.entity.dto.AmsUserRoleDTO;
import com.ikats.ams.entity.query.AmsUserRoleQuery;

public interface IAmsUserRoleService {

    /**
     * 保存单条记录
     */
    AmsUserRoleDTO add(AmsUserRoleQuery query);

    /**
     * 服务接口:多行添加用户角色关系表
     *
     * @param query
     * @return AmsUserRoleDTO
     */
    AmsUserRoleDTO insertList(AmsUserRoleQuery query);

    /**
     * 服务接口:删除用户角色关系表
     *
     * @param query
     * @return AmsUserRoleDTO
     */
    AmsUserRoleDTO deleteByKey(AmsUserRoleQuery query);

    /**
     * 服务接口:根据用户id和角色id删除关联
     *
     * @param query
     * @return AmsUserRoleDTO
     */
    AmsUserRoleDTO removeRole(AmsUserRoleQuery query);

    /**
     * 服务接口:根据用户id获取角色列表
     *
     * @param query
     * @return AmsUserRoleDTO
     */
    AmsUserRoleDTO queryRoleListByUserId(AmsUserRoleQuery query);

    /**
     * 服务接口:根据用户id修改关联角色
     *
     * @param query
     * @return AmsUserRoleDTO
     */
    AmsUserRoleDTO updateByUid(AmsUserRoleQuery query);

    /**
     * 服务接口:添加单个用户角色
     *
     * @param query
     * @return AmsUserRoleDTO
     */
    AmsUserRoleDTO addUserRole(AmsUserRoleQuery query);

    /**
     * 服务接口:删除关联
     *
     * @param query
     * @return AmsUserRoleDTO
     */
    AmsUserRoleDTO deleteByUid(AmsUserRoleQuery query);

}
