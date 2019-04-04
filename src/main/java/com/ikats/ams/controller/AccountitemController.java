package com.ikats.ams.controller;


import com.ikats.ams.entity.AccountitemBean;
import com.ikats.ams.entity.AccountitemCopyDto;
import com.ikats.ams.entity.Money;
import com.ikats.ams.entity.dto.AccountitemDto;
import com.ikats.ams.entity.query.AccountitemQuery;
import com.ikats.ams.service.IAccountitemService;
import com.ikats.common.annotation.Accesspermission;
import com.ikats.common.annotation.LogonAuthority;
import com.ikats.common.config.Constants;
import com.ikats.common.excel.AccountitemExport;
import com.ikats.common.util.ExchangeUtil;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.HashMap;
import java.util.List;


/**
 * @Date: Created in 10:01 2017/8/30
 * @Description:
 */
@RestController
@RequestMapping("Accountitem")
public class AccountitemController extends AbstractController{

    @Autowired
    private IAccountitemService service;

    @Autowired
    private HttpServletRequest request;


    /**
     * 添加记账明细
     * @param params
     * @param request
     * @return
     */
    @Accesspermission
    @LogonAuthority
    @PostMapping("insert")
    public AccountitemDto insert(@RequestBody HashMap<String,Object> params, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        AccountitemQuery query = new AccountitemQuery();
        query.setUserBean(getUserBean(token));
        return service.insert(query,params);
    }





    /**
     * Web入口:多行添加记账明细
     * @param query
     * @return AccountitemDto
     */
    @Accesspermission
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "insertList", method = {RequestMethod.POST})
    public AccountitemDto insertList(@RequestBody AccountitemQuery query, HttpServletRequest request)
    {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.insertList(query);
    }


    /**
     * 删除记账明细
     * @param query
     * @return
     */
    @LogonAuthority
    @PostMapping("delete")
    public AccountitemDto delete(@RequestBody AccountitemQuery query) {
       return service.delete(query);
    }


    /**
     * 更新记账明细
     * @param params
     * @param request
     * @return
     */
    @LogonAuthority
    @PostMapping(value = "update")
    public AccountitemDto update(@RequestBody HashMap<String,Object> params, HttpServletRequest request) {
        AccountitemQuery query = new AccountitemQuery();
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.update(query,params);
    }


    /**
     * Web入口:获取单行记账明细
     * @param query
     * @return AccountitemDto
     */
    @LogonAuthority
    @PostMapping("selectByKey")
    public AccountitemDto selectByKey(@RequestBody AccountitemQuery query, HttpServletRequest request) {
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
    public AccountitemDto selectCount(@RequestBody AccountitemQuery query, HttpServletRequest request)
    {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.selectCount(query);
    }


    /**
     * Web入口:获取数据数量
     * @param query
     * @return AccountCategoryDto
     */
    @LogonAuthority
    @PostMapping("selectCountByOrgId")
    public AccountitemDto selectCountByOrgId(@RequestBody AccountitemQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.selectCountByOrgId(query);
    }


    /**
     * 记账管理
     * @param query
     * @param request
     * @return
     */
    @LogonAuthority
    @PostMapping("pageByQuery")
    public AccountitemDto pageByQuery(@RequestBody AccountitemQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.pageByQuery(query);
    }


    /**
     * 审批接口
     * @param query
     * @return AccountitemDto
     */
    @Accesspermission
    @LogonAuthority
    @PostMapping("audit")
    public AccountitemDto updateStatus(@RequestBody AccountitemQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.updateStatus(query);
    }



    /**
     * 获取汇率的接口
     * @param query
     * @return double
     */
    @LogonAuthority
    @PostMapping("getrate")
    public AccountitemDto GetRate(@RequestBody AccountitemQuery query) throws Exception {
        AccountitemDto dto = new AccountitemDto();
        if (query.getDataRow().getCurrency1()!=null &&query.getDataRow().getCurrency2()!=null){
            String currency1 = query.getDataRow().getCurrency1();
            String currency2 = query.getDataRow().getCurrency2();
            double rate = ExchangeUtil.GetRate(currency1, currency2);
            dto.setMoney(new Money());
            dto.getMoney().setExchangeRate(rate);
            dto.setSuccess(true);
            return dto;
        }else {
            dto.setSuccess(false);
            dto.setMessage("请输入正确的货币编码");
            return dto;
        }
    }
    //导出excel
    @ResponseBody
    @RequestMapping(value = "export", method = {RequestMethod.POST})
    public AccountitemDto exportExcel(@RequestBody AccountitemQuery query, HttpServletResponse response, HttpServletRequest request) throws Exception
    {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        AccountitemDto dto = service.pageByQuery(query);
        List<AccountitemBean> beans = dto.getDataTable();
        if (beans!=null){
            String excel = AccountitemExport.createExcel(response, beans, request);
            if (excel.equals("导出失败")){
                dto.setSuccess(false);
                dto.setMessage(excel);
                return dto;
            }
            dto.setSuccess(true);
            dto.setMessage(excel);
            return dto;
        }
        return dto;
    }

    /**
     * Web入口:删除生成的excel
     * @param query
     * @return AccountitemDto
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "deleteExcel", method = {RequestMethod.POST})
    public AccountitemDto deleteExcel(@RequestBody AccountitemQuery query)
    {
        AccountitemDto dto = new AccountitemDto();
        String path = request.getSession().getServletContext().getRealPath("/") + "file/export/";
        if (query.getExpress().containsKey("url")){
            File file = new File(path + query.getExpress().get("url"));
            if (file.exists()) {
                file.delete();
                dto.setMessage("删除成功");
                dto.setSuccess(true);
                return dto;
            }
        }
        dto.setSuccess(false);
        dto.setMessage("文件不存在");
        return dto;
    }

    /**
     * Web入口:
     * @param query
     * @return AccountitemDto
     */
    @ResponseBody
    @RequestMapping(value = "getItemListById", method = {RequestMethod.POST})
    public AccountitemDto getItemListById(@RequestBody AccountitemQuery query, HttpServletRequest request)
    {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.getItemListById(query);
    }


    @ResponseBody
    @PostMapping(value = "/AddNew")
    public HashMap addNew(@RequestBody AccountitemCopyDto accountitemDto) {
        return service.addAccountExpenses(accountitemDto);
    }

}
