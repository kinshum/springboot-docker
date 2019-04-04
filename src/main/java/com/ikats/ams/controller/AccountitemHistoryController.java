package com.ikats.ams.controller;


import com.ikats.ams.entity.dto.AccountitemDto;
import com.ikats.ams.entity.query.AccountitemQuery;
import com.ikats.ams.service.IAccountitemHistoryService;
import com.ikats.common.annotation.LogonAuthority;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


/**
 * @Author: jz
 * @Date: Created in 16:18 2017/8/31
 * @Description:
 */
@Controller
@RequestMapping("AccountitemHistory")
public class AccountitemHistoryController {

    @Autowired
    private IAccountitemHistoryService service;

    /**
     * Web入口:添加记账明细历史版本
     * @param query
     * @return AccountitemDto
     */
    @ResponseBody
    @RequestMapping(value = "insert", method = {RequestMethod.POST})
    public AccountitemDto insert(@RequestBody AccountitemQuery query)
    {
        return service.insert(query);
    }

    /**
     * Web入口:删除记账明细历史版本
     * @param query
     * @return AccountitemDto
     */
    @ResponseBody
    @RequestMapping(value = "delete", method = {RequestMethod.POST})
    public AccountitemDto delete(@RequestBody AccountitemQuery query)
    {
        return service.delete(query);
    }

    /**
     * Web入口:更新记账明细历史版本
     * @param query
     * @return AccountitemDto
     */
    @ResponseBody
    @RequestMapping(value = "update", method = {RequestMethod.POST})
    public AccountitemDto update(@RequestBody AccountitemQuery query)
    {
        return service.update(query);
    }

    /**
     * Web入口:获取单行记账明细历史版本
     * @param query
     * @return AccountitemDto
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "selectByKey", method = {RequestMethod.POST})
    public AccountitemDto selectByKey(@RequestBody AccountitemQuery query)
    {
        return service.selectByKey(query);
    }

    /**
     * Web入口:获取数据数量
     * @param query
     * @return AccountitemDto
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "selectCount", method = {RequestMethod.POST})
    public AccountitemDto selectCount(@RequestBody AccountitemQuery query)
    {
        return service.selectCount(query);
    }

    /**
     * Web入口:翻页查询记账明细历史版本
     * @param query
     * @return AccountitemDto
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "pageByQuery", method = {RequestMethod.POST})
    public AccountitemDto pageByQuery(@RequestBody AccountitemQuery query)
    {
        return service.pageByQuery(query);
    }

}
