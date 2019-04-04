package com.ikats.ams.controller;


import com.ikats.ams.entity.dto.AmsRoleDTO;
import com.ikats.ams.entity.query.AmsRoleQuery;
import com.ikats.ams.service.IAmsRoleService;
import com.ikats.common.annotation.LogonAuthority;
import com.ikats.common.config.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;


/**
 * Mapper
 * <p>
 * 角色字典表数据操作接口
 */

@RestController
@RequestMapping("AmsRole")
public class AmsRoleController extends AbstractController {

    @Autowired
    private IAmsRoleService service;

    /**
     * 添加角色
     *
     * @param query
     * @return
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "add", method = {RequestMethod.POST})
    public AmsRoleDTO add(@RequestBody AmsRoleQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return this.service.add(query);
    }

    /**
      * @Author: jz
      * @Date: Created in 2017/10/31 10:44
      * @Description: 批量添加角色
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "batchAdd", method = {RequestMethod.POST})
    public AmsRoleDTO batchAdd(@RequestBody AmsRoleQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return this.service.batchAdd(query);
    }

    /**
      * @Author: jz
      * @Date: Created in 2017/10/31 10:59
      * @Description: 根据主键id修改角色
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "modifyRole", method = {RequestMethod.POST})
    public AmsRoleDTO modifyRole(@RequestBody AmsRoleQuery query) {
        return this.service.modifyRole(query);
    }

    /**
      * @Author: jz
      * @Date: Created in 2017/10/31 11:04
      * @Description: 删除角色根据主键
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "removeRole", method = {RequestMethod.POST})
    public AmsRoleDTO removeRole(@RequestBody AmsRoleQuery query) {
        return this.service.removeRole(query);
    }

    /**
      * @Author: jz
      * @Date: Created in 2017/10/31 11:06
      * @Description: 根据主键id,获取详情
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "getRole", method = {RequestMethod.POST})
    public AmsRoleDTO getRole(@RequestBody AmsRoleQuery query) {
        return this.service.getRole(query);
    }


    /**
     * 查询当前登录用户所在组织的所有角色
     * @param  query
     * @return DTO
     */
    @LogonAuthority
    @PostMapping("getMyOrgRole")
    public AmsRoleDTO getMyOrgRole(@RequestBody AmsRoleQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return this.service.getMyOrgRole(query);
    }

    /**
      * @Author: jz
      * @Date: Created in 2017/10/31 11:11
      * @Description: 分页查询
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "pageQueryRole", method = {RequestMethod.POST})
    public AmsRoleDTO pageQueryRole(@RequestBody AmsRoleQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return this.service.pageQueryRole(query);
    }

    /**
     *  获取数据数量
     * @param query
     * @return CustomsClearanceDTO
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "selectCountByOrgId", method = {RequestMethod.POST})
    public AmsRoleDTO selectCountByOrgId(@RequestBody AmsRoleQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return this.service.selectCountByOrgId(query);
    }

    /**
     * @Date: Created in 2017/11/6 14:07
     * @Description: 根据用户id找到对应的角色
     */
    @LogonAuthority
    @PostMapping("findRoleByUid")
    public AmsRoleDTO findRoleByUid(@RequestBody AmsRoleQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return this.service.findRoleByUid(query);
    }
}
