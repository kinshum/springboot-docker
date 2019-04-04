package com.ikats.ams.controller;

import com.ikats.ams.entity.dto.BillDTO;
import com.ikats.ams.entity.query.BillQuery;
import com.ikats.ams.service.IBillService;
import com.ikats.common.annotation.Accesspermission;
import com.ikats.common.annotation.LogonAuthority;
import com.ikats.common.config.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;


@RestController
@RequestMapping("bill")
public class BillController extends AbstractController{

    @Autowired
    private IBillService service;


    /** 保存单条记录 */
    @Accesspermission
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "insert", method = {RequestMethod.POST})
    public BillDTO insert(@RequestBody BillQuery query, HttpServletRequest request)
    {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.insert(query);
    }

    /** 更新记录 - 根据主键 */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "update", method = {RequestMethod.POST})
    public BillDTO updateByKey(@RequestBody BillQuery query, HttpServletRequest request)
    {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.update(query);
    }

    /** 删除记录 - 根据主键 */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "deleteByKey", method = {RequestMethod.POST})
    public BillDTO deleteByKey(@RequestBody BillQuery query)
    {
        return service.deleteByKey(query);
    }

    /** 查询记录 - 根据主键 */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "selectByKey", method = {RequestMethod.POST})
    public BillDTO selectByKey(@RequestBody BillQuery query)
    {
        return service.selectByKey(query);
    }

    /**
     * @description 筛选记录
     * @param query
     * @param request
     * @return
     */
    @LogonAuthority
    @PostMapping("pageByQuery")
    public  BillDTO selectAll(@RequestBody BillQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.pageByQuery(query);
    }

    /**
     * Web入口:审批接口
     * @param query
     * @return BillDTO
     */
    @Accesspermission
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "audit", method = {RequestMethod.POST})
    public BillDTO updateStatus(@RequestBody BillQuery query, HttpServletRequest request)
    {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.updateStatus(query);
    }

    /**
     * Web入口:开票
     * @param query
     * @return BillDTO
     */
    @Accesspermission
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "invoiced", method = {RequestMethod.POST})
    public BillDTO invoiced(@RequestBody BillQuery query, HttpServletRequest request)
    {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.invoiced(query);
    }

    /**
     * Web入口:结款
     * @param query
     * @return BillDTO
     */
    @Accesspermission
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "paid", method = {RequestMethod.POST})
    public BillDTO paid(@RequestBody BillQuery query, HttpServletRequest request)
    {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.paid(query);
    }

    /** 修改备注 */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "modify", method = {RequestMethod.POST})
    public BillDTO modify(@RequestBody BillQuery query, HttpServletRequest request)
    {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.modify(query);
    }

    /**
     * Web入口:开票
     * @param query
     * @return BillDTO
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "onlyOne", method = {RequestMethod.POST})
    public BillDTO onlyOne(@RequestBody BillQuery query)
    {
        return service.onlyOne(query);
    }

    /**
     * Web入口:获取数据数量
     * @param query
     * @return BillDTO
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "selectCount", method = {RequestMethod.POST})
    public BillDTO selectCount(@RequestBody BillQuery query)
    {
        return service.selectCount(query);
    }

    /**
     * @description 获取数据数量
     * @param query
     * @return BillDTO
     */
    @LogonAuthority
    @PostMapping("selectCountByOrgId")
    public BillDTO selectCountByOrgId(@RequestBody BillQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.selectCountByOrgId(query);
    }

}
