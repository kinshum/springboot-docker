package com.ikats.ams.controller;

import com.ikats.ams.entity.dto.AmsUserRoleDTO;
import com.ikats.ams.entity.query.AmsUserRoleQuery;
import com.ikats.ams.service.IAmsUserRoleService;
import com.ikats.common.annotation.LogonAuthority;
import com.ikats.common.config.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;


/**
 * Mapper
 * <p>
 * 用户角色 数据操作接口
 */

@RestController
@RequestMapping("AmsUserRole")
public class AmsUserRoleController extends AbstractController {

    @Autowired
    private IAmsUserRoleService service;

    /**
     * 添加 角色-用户 ,dataRow :{...}
     *
     * @param query
     * @return
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "insert", method = {RequestMethod.POST})
    public AmsUserRoleDTO insert(@RequestBody AmsUserRoleQuery query) {
        return this.service.add(query);
    }

    /**
     * Web入口:多行添加用户角色关系表
     *
     * @param query
     * @return CmsAmsUserRoleDTO
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "insertList", method = {RequestMethod.POST})
    public AmsUserRoleDTO insertList(@RequestBody AmsUserRoleQuery query) {
        return service.insertList(query);
    }

    /**
     * Web入口:删除用户角色关系表
     *
     * @param query
     * @return AmsUserRoleDTO
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "deleteByKey", method = {RequestMethod.POST})
    public AmsUserRoleDTO deleteByKey(@RequestBody AmsUserRoleQuery query) {
        return service.deleteByKey(query);
    }

    /**
      * @Author: jz
      * @Date: Created in 2017/11/2 14:22
      * @Description: 根据用户id和角色id删除关联
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "removeRole", method = {RequestMethod.POST})
    public AmsUserRoleDTO removeRole(@RequestBody AmsUserRoleQuery query) {
        return service.removeRole(query);
    }


    /**
      * @Author: jz
      * @Date: Created in 2017/10/31 17:39
      * @Description: 根据用户id获取这个用户的所有角色
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "queryRoleListByUserId", method = {RequestMethod.POST})
    public AmsUserRoleDTO queryRoleListByUserId(@RequestBody AmsUserRoleQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.queryRoleListByUserId(query);
    }

    /**
      * @Author: jz
      * @Date: Created in 2017/11/1 16:07
      * @Description: 根据用户id修改关联角色
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "updateByUid", method = {RequestMethod.POST})
    public AmsUserRoleDTO updateByUid(@RequestBody AmsUserRoleQuery query) {
        return service.updateByUid(query);
    }

    /**
     * @description: 给用户赋单个角色
     * @param query
     * @return
     */
    @LogonAuthority
    @PostMapping("addUserRole")
    public AmsUserRoleDTO addUserRole(@RequestBody AmsUserRoleQuery query) {
        return service.addUserRole(query);
    }
}
