package com.ikats.ams.controller;


import com.ikats.ams.entity.dto.AmsBusinessTypeDto;
import com.ikats.ams.entity.query.AmsBusinessTypeQuery;
import com.ikats.ams.service.IAmsBusinessTypeService;
import com.ikats.common.annotation.Accesspermission;
import com.ikats.common.annotation.LogonAuthority;
import com.ikats.common.config.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;

/**
 * @Author: jz
 * @Date: Created in 10:31 2017/9/8
 * @Description:
 */
@RestController
@RequestMapping("AmsBusinessType")
public class AmsBusinessTypeController extends AbstractController{

    @Autowired
    private IAmsBusinessTypeService service;

    /**
     * Web入口:添加业务类型
     * @param query
     * @return AmsBusinessTypeDto
     */
    @Accesspermission
    @LogonAuthority
    @PostMapping("insert")
    public AmsBusinessTypeDto insert(@RequestBody AmsBusinessTypeQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.insert(query);
    }

    /**
     * Web入口:删除业务类型
     * @param query
     * @return AmsBusinessTypeDto
     */
    @Accesspermission
    @LogonAuthority
    @PostMapping("delete")
    public AmsBusinessTypeDto delete(@RequestBody AmsBusinessTypeQuery query) {
        return service.delete(query);
    }

    /**
     * Web入口:更新业务类型
     * @param query
     * @return AmsBusinessTypeDto
     */
    @Accesspermission
    @LogonAuthority
    @PostMapping("update")
    public AmsBusinessTypeDto update(@RequestBody AmsBusinessTypeQuery query) {
        return service.update(query);
    }

    /**
     * Web入口:获取单行业务类型
     * @param query
     * @return AmsBusinessTypeDto
     */
    @LogonAuthority
    @PostMapping("selectByKey")
    public AmsBusinessTypeDto selectByKey(@RequestBody AmsBusinessTypeQuery query) {
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
    public AmsBusinessTypeDto selectCount(@RequestBody AmsBusinessTypeQuery query, HttpServletRequest request)
    {
        return service.selectCount(query);
    }

    /**
     * Web入口:获取数据数量
     * @param query
     * @return AccountCategoryDto
     */
    @LogonAuthority
    @PostMapping("selectCountByOrgId")
    public AmsBusinessTypeDto selectCountByOrgId(@RequestBody HashMap<String,Object> query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        AmsBusinessTypeQuery amsBusinessTypeQuery = new AmsBusinessTypeQuery();
        amsBusinessTypeQuery.setUserBean(getUserBean(token));
        amsBusinessTypeQuery.setExpress((HashMap<String,String>)query.get("express"));
        return service.selectCountByOrgId(amsBusinessTypeQuery);
    }

    /**
     * Web入口:翻页查询业务类型
     * @param query
     * @return AmsBusinessTypeDto
     */
    @LogonAuthority
    @PostMapping("pageByQuery")
    public AmsBusinessTypeDto pageByQuery(@RequestBody AmsBusinessTypeQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.pageByQuery(query);
    }

    /**
     * Web入口:翻页查询业务类型
     * @param query
     * @return AmsBusinessTypeDto
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "selectByQuery", method = {RequestMethod.POST})
    public AmsBusinessTypeDto selectByQuery(@RequestBody AmsBusinessTypeQuery query, HttpServletRequest request)
    {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.selectByQuery(query);
    }

    /**
     * Web入口:onlyOne
     * @param query
     * @return AmsBusinessTypeDto
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "onlyOne", method = {RequestMethod.POST})
    public AmsBusinessTypeDto onlyOne(@RequestBody AmsBusinessTypeQuery query, HttpServletRequest request)
    {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.onlyOne(query);
    }
}
