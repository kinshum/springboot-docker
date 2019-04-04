package com.ikats.ams.controller;

import com.ikats.ams.entity.dto.AccountDTO;
import com.ikats.ams.entity.query.AccountQuery;
import com.ikats.ams.service.IAccountService;
import com.ikats.common.annotation.LogonAuthority;
import com.ikats.common.config.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * @Date:Created in 17:12 2017/8/29
 */
@RestController
@RequestMapping("account")
public class AccountController extends AbstractController {

    @Autowired
    private IAccountService service;

    /** 保存单条记录 */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "insert", method = {RequestMethod.POST})
    public AccountDTO insert(@RequestBody AccountQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.insert(query);
    }

    /** 更新记录 - 根据主键 */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "updateByKey", method = {RequestMethod.POST})
    public AccountDTO updateByKey(@RequestBody AccountQuery query) {
        return service.updateByKey(query);
    }

    /** 删除记录 - 根据主键 */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "deleteByKey", method = {RequestMethod.POST})
    public AccountDTO deleteByKey(@RequestBody AccountQuery query)
    {
        return service.deleteByKey(query);
    }

    /** 查询记录 - 根据主键 */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "selectByKey", method = {RequestMethod.POST})
    public AccountDTO selectByKey(@RequestBody AccountQuery query, HttpServletRequest request) {
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
    public AccountDTO selectCount(@RequestBody AccountQuery query, HttpServletRequest request) {
        return service.selectCount(query);
    }

    /**
     * Web入口:获取数据数量根据主键id
     * @param query
     * @return AccountCategoryDto
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "selectCountByOrgId", method = {RequestMethod.POST})
    public AccountDTO selectCountByOrgId(@RequestBody AccountQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.selectCountByOrgId(query);
    }


    /**
     * @description 筛选记录
     * @param query
     * @param request
     * @return
     */
    @LogonAuthority
    @PostMapping("selectAll")
    public  AccountDTO selectAll(@RequestBody AccountQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.selectAll(query);
    }

}
