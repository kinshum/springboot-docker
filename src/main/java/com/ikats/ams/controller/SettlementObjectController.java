package com.ikats.ams.controller;

import com.ikats.ams.entity.dto.SettlementObjectDto;
import com.ikats.ams.entity.query.SettlementObjectQuery;
import com.ikats.ams.service.ISettlementObjectService;
import com.ikats.common.annotation.Accesspermission;
import com.ikats.common.annotation.LogonAuthority;
import com.ikats.common.config.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * @Author: jz
 * @Date: Created in 17:23 2017/8/29
 * @Description:
 */
@RestController
@RequestMapping("SettlementObject")
public class SettlementObjectController extends AbstractController{

    @Autowired
    private ISettlementObjectService service;

    /**
     * Web入口:添加结算对象
     * @param query
     * @return SettlementObjectDto
     */
    @Accesspermission
    @LogonAuthority
    @PostMapping("insert")
    public SettlementObjectDto insert(@RequestBody SettlementObjectQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.insert(query);
    }

    /**
     * Web入口:删除结算对象
     * @param query
     * @return SettlementObjectDto
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "delete", method = {RequestMethod.POST})
    public SettlementObjectDto delete(@RequestBody SettlementObjectQuery query)
    {
        return service.delete(query);
    }



    /**
     * 更新结算对象
     * @param query
     * @return SettlementObjectDto
     */
    @Accesspermission
    @LogonAuthority
    @PostMapping("update")
    public SettlementObjectDto update(@RequestBody SettlementObjectQuery query) {
        return service.update(query);
    }

    /**
     * Web入口:获取单行结算对象
     * @param query
     * @return SettlementObjectDto
     */
    @LogonAuthority
    @ResponseBody
    @PostMapping("selectByKey")
    public SettlementObjectDto selectByKey(@RequestBody SettlementObjectQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.selectByKey(query);
    }

    /**
     * Web入口:获取数据数量
     * @param query
     * @return AccountCategoryDto
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "selectCount", method = {RequestMethod.POST})
    public SettlementObjectDto selectCount(@RequestBody SettlementObjectQuery query, HttpServletRequest request)
    {
        return service.selectCount(query);
    }

    /**
     * 获取数据数量根据组织id
     * @param query
     * @return AccountCategoryDto
     */
    @LogonAuthority
    @ResponseBody
    @PostMapping("selectCountByOrgId")
    public SettlementObjectDto selectCountByOrgId(@RequestBody SettlementObjectQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.selectCountByOrgId(query);
    }

    /**
     * @description 记账管理 结算对象
     * @param query
     * @param request
     * @return
     */
    @LogonAuthority
    @PostMapping(value = "pageByQuery")
    public SettlementObjectDto pageByQuery(@RequestBody SettlementObjectQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.pageByQuery(query);
    }

    /**
     * Web入口:验证结算对象id唯一性
     * @param query
     * @return SettlementObjectDto
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "onlyOne", method = {RequestMethod.POST})
    public SettlementObjectDto onlyOne(@RequestBody SettlementObjectQuery query, HttpServletRequest request)
    {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.onlyOne(query);
    }

    /**
     * 验证结算对象名字唯一性
     * @param query
     * @return SettlementObjectDto
     */
    @LogonAuthority
    @PostMapping("onlyOneName")
    public SettlementObjectDto onlyOneName(@RequestBody SettlementObjectQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.onlyOneName(query);
    }

    /**
     * 查询结算对象
     * @param query
     * @return SettlementObjectDto
     */
    @LogonAuthority
    @PostMapping("selectByQuery")
    public SettlementObjectDto selectByQuery(@RequestBody SettlementObjectQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.selectByQuery(query);
    }
}
