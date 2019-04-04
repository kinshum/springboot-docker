package com.ikats.ams.controller;


import com.ikats.ams.entity.dto.AmsRolePermissionDTO;
import com.ikats.ams.entity.query.AmsRolePermissionQuery;
import com.ikats.ams.service.IAmsRolePermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @Author: jz
 * @Date: Created in 15:34 2017/9/26
 * @Description: 许可and角色关系表
 */
@Controller
@RequestMapping("AmsRolePermission")
public class AmsRolePermissionController extends AbstractController {

    @Autowired
    private IAmsRolePermissionService service;

    /**
     * Web入口:添加许可and角色关系表
     *
     * @param query
     * @return AmsRolePermissionDTO
     */
    @ResponseBody
    @RequestMapping(value = "empowerment", method = {RequestMethod.POST})
    public AmsRolePermissionDTO insert(@RequestBody AmsRolePermissionQuery query) {
        return service.insert(query);
    }

    /**
     * Web入口:多行添加许可and角色关系表
     *
     * @param query
     * @return AmsRolePermissionDTO
     */
    @ResponseBody
    @RequestMapping(value = "batchEmpowerment", method = {RequestMethod.POST})
    public AmsRolePermissionDTO insertList(@RequestBody AmsRolePermissionQuery query) {
        return service.insertList(query);
    }

    /**
     * Web入口:根据角色id和权限id删除关联
     *
     * @param query
     * @return AmsRolePermissionDTO
     */
    @ResponseBody
    @RequestMapping(value = "removeEmpowerment", method = {RequestMethod.POST})
    public AmsRolePermissionDTO removeEmpowerment(@RequestBody AmsRolePermissionQuery query) {
        return service.removeEmpowerment(query);
    }

    /**
      * @Author: jz
      * @Date: Created in 2017/11/2 13:37
      * @Description: 删除角色的所有权限
     */
    @ResponseBody
    @RequestMapping(value = "clearEmpowerment", method = {RequestMethod.POST})
    public AmsRolePermissionDTO clearEmpowerment(@RequestBody AmsRolePermissionQuery query) {
        return service.clearEmpowerment(query);
    }

    /**
     * Web入口:更新许可and角色关系表
     *
     * @param query
     * @return AmsRolePermissionDTO
     */
    @ResponseBody
    @RequestMapping(value = "modifyEmpowerment", method = {RequestMethod.POST})
    public AmsRolePermissionDTO modifyEmpowerment(@RequestBody AmsRolePermissionQuery query) {
        return service.modifyEmpowerment(query);
    }

    /**
     * Web入口:获取单行许可and角色关系表
     *
     * @param query
     * @return AmsRolePermissionDTO
     */
    @ResponseBody
    @RequestMapping(value = "selectByKey", method = {RequestMethod.POST})
    public AmsRolePermissionDTO selectByKey(@RequestBody AmsRolePermissionQuery query) {
        return service.selectByKey(query);
    }

    /**
     * Web入口:查询许可and角色关系表
     *
     * @param query
     * @return AmsRolePermissionDTO
     */
    @ResponseBody
    @RequestMapping(value = "selectByQuery", method = {RequestMethod.POST})
    public AmsRolePermissionDTO selectByQuery(@RequestBody AmsRolePermissionQuery query) {
        return service.selectByQuery(query);
    }
}
