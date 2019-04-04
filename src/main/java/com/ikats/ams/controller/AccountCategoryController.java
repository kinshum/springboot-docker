package com.ikats.ams.controller;


import com.ikats.ams.entity.AccountCategoryBean;
import com.ikats.ams.entity.dto.AccountCategoryDto;
import com.ikats.ams.entity.query.AccountCategoryQuery;
import com.ikats.ams.service.IAccountCategoryService;
import com.ikats.common.annotation.Accesspermission;
import com.ikats.common.annotation.LogonAuthority;
import com.ikats.common.config.Constants;
import com.ikats.common.excel.AccountCategoryExcel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.*;

/**
 * 费用科目
 */
@RestController
@RequestMapping("AccountCategory")
public class AccountCategoryController extends AbstractController {

    @Autowired
    private IAccountCategoryService service;



    /**
     * Web入口:添加财务科目
     * @param query
     * @return AmsAccountCategoryDto
     */
    @Accesspermission
    @LogonAuthority
    @PostMapping("insert")
    public AccountCategoryDto insert(@RequestBody AccountCategoryQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        AccountCategoryDto dto = service.insert(query);
        return dto;
    }


    /**
     * Web入口:删除财务科目
     * @param query
     * @return AccountCategoryDto
     */
    @LogonAuthority
    @PostMapping("delete")
    public AccountCategoryDto delete(@RequestBody AccountCategoryQuery query) {
        return service.delete(query);

    }


    /**
     * Web入口:更新财务科目
     * @param query
     * @return AccountCategoryDto
     */
    @Accesspermission
    @LogonAuthority
    @PostMapping("update")
    public AccountCategoryDto update(@RequestBody AccountCategoryQuery query) {
        AccountCategoryDto dto = service.update(query);
        if (dto.getStatusCode()!=null){
            Locale locale=Locale.getDefault();
            ResourceBundle rb=ResourceBundle.getBundle("MessgesBundle", locale);
            String statusCode = dto.getStatusCode();
            String string = rb.getString(statusCode);
            dto.setMessage(string);
        }
        return dto;
    }


    /**
     * Web入口:获取单行财务科目
     * @param query
     * @return AccountCategoryDto
     */
    @LogonAuthority
    @PostMapping("selectByKey")
    public AccountCategoryDto selectByKey(@RequestBody AccountCategoryQuery query, HttpServletRequest request) {
        return service.selectByKey(query);
    }


    /**
     * Web入口:获取数据数量
     * @param query
     * @return AccountCategoryDto
     */
    @LogonAuthority
    @PostMapping("selectCount")
    public AccountCategoryDto selectCount(@RequestBody AccountCategoryQuery query, HttpServletRequest request) {
        return service.selectCount(query);
    }


    /**
     * Web入口:获取数据数量根据组织id
     * @param query
     * @return AccountCategoryDto
     */
    @LogonAuthority
    @PostMapping("selectCountByOrgId")
    public AccountCategoryDto selectCountByOrgId(@RequestBody AccountCategoryQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.selectCountByOrgId(query);
    }


    /**
     * Web入口:翻页查询财务科目
     * @param query
     * @return AccountCategoryDto
     */
    @LogonAuthority
    @PostMapping("pageByQuery")
    public AccountCategoryDto pageByQuery(@RequestBody AccountCategoryQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.pageByQuery(query);
    }


    /**
     * Web入口:翻页查询财务科目
     * @param query
     * @return AccountCategoryDto
     */
    @LogonAuthority
    @PostMapping("selectByQuery")
    public AccountCategoryDto selectByQuery(@RequestBody AccountCategoryQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.selectByQuery(query);
    }


    /**
     * @description 费用明细
     * @param query
     * @param request
     * @return
     */
    @LogonAuthority
    @PostMapping("treedate")
    public AccountCategoryDto treedate(@RequestBody AccountCategoryQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        AccountCategoryDto dto = service.selectByQuery(query);
        List<AccountCategoryBean> beans = dto.getDataTable();
        List list = new ArrayList<>();
        if (beans!=null){
            for (int i = 0;i<beans.size();i++){
                HashMap<String, Object> map = new HashMap<String, Object>();
                map.put("label",beans.get(i).getCategoryName());
                map.put("key",beans.get(i).getId());
                map.put("value",beans.get(i).getId().toString());
                list.add(i,map);
            }
            for (int i=0;i<list.size();i++) {
                Map map = (Map)list.get(i);
                Object id = map.get("key");
                query.getExpress().put("pid",id.toString());
                AccountCategoryDto dto1 = service.selectByQuery(query);
                List<AccountCategoryBean> accountCategoryBeans = dto1.getDataTable();
                ArrayList<Object> arrayList = new ArrayList<>();
                if (accountCategoryBeans!=null){
                    for (int j =0;j<accountCategoryBeans.size();j++){
                        HashMap<String, Object> hashMap = new HashMap<String, Object>();
                        hashMap.put("label",accountCategoryBeans.get(j).getCategoryName());
                        hashMap.put("key",accountCategoryBeans.get(j).getId());
                        hashMap.put("value",accountCategoryBeans.get(j).getId().toString());
                        arrayList.add(j,hashMap);
                    }
                    if (arrayList.size()>0){
                        map.put("children",arrayList);
                    }
                }
            }

        }
        if(list.size()<=0) {
            dto.setSuccess(false);
            dto.setMessage("没有找到");
            return dto;
        }
        dto.setSuccess(true);
        dto.setTreeDate(list);
        return dto;
    }


    /**
     * Web入口:验证记账科目编码唯一性
     * @param query
     * @return SettlementObjectDto
     */
    @LogonAuthority
    @PostMapping("onlyOneCode")
    public AccountCategoryDto onlyOneCode(@RequestBody AccountCategoryQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.onlyOneCode(query);
    }


    /**
     * Web入口:验证记账科目名称唯一性
     * @param query
     * @return SettlementObjectDto
     */
    @LogonAuthority
    @PostMapping("onlyOneName")
    public AccountCategoryDto onlyOneName(@RequestBody AccountCategoryQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return service.onlyOneName(query);
    }


    /**
     * Excel 费用模板
     * @return
     */
    @Accesspermission
    @PostMapping("upload")
    public AccountCategoryDto uploadPlan(@RequestParam(value = "upload", required = false) MultipartFile file
            , HttpServletRequest request) throws IOException {
        AccountCategoryDto result = new AccountCategoryDto();
        AccountCategoryQuery query = AccountCategoryExcel.categoryImport(file);
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        AccountCategoryDto categoryDto = this.service.selectByQuery(query);
        String reCall = this.checkAccountCategory(getUserBean(token),query,categoryDto);
        if(reCall!=null) {
            result.setSuccess(false);
            result.setMessage(reCall);
            return result;
        }
        return this.service.addFromExcel(query);
    }




}
