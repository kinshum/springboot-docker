package com.ikats.ams.service.ipml;


import com.ikats.ams.dao.AccountCategoryMapper;
import com.ikats.ams.entity.AccountCategoryBean;
import com.ikats.ams.entity.UserBean;
import com.ikats.ams.entity.dto.AccountCategoryDto;
import com.ikats.ams.entity.enumerate.StatusCode;
import com.ikats.ams.entity.query.AccountCategoryQuery;
import com.ikats.ams.service.IAccountCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.List;
import java.util.Map;

@Service
public class AccountCategoryService implements IAccountCategoryService {

    @Autowired
    private AccountCategoryMapper accountCategoryMapper;


    @Override
    public AccountCategoryDto insert(AccountCategoryQuery query) {
        AccountCategoryDto result = new AccountCategoryDto();
        UserBean user = query.getUserBean();
        AccountCategoryBean record = query.getDataRow();
        record.setAccountId(user.getOrgCode());
        record.setOrgId(user.getOrganizationId());
        record.setCreator(user.getId().toString());
        int insert = accountCategoryMapper.insert(record);
        if (insert != 1) {
            result.setSuccess(false);
            result.setMessage("添加失败");
            result.setCode(StatusCode.INFO_NO_QUERY.getValue());
            return result;
        }
        result.setSuccess(true);
        return result;
    }

    @Override
    public AccountCategoryDto delete(AccountCategoryQuery query) {
        return null;
    }

    @Override
    public AccountCategoryDto update(AccountCategoryQuery query) {
        AccountCategoryDto result = new AccountCategoryDto();
        AccountCategoryBean dataRow = query.getDataRow();
        int update = accountCategoryMapper.update(dataRow);
        if (update != 1) {
            result.setSuccess(false);
            result.setMessage("没有找到");
            result.setCode(StatusCode.INFO_NO_QUERY.getValue());
            return result;
        }
        result.setSuccess(true);
        return result;
    }

    @Override
    public AccountCategoryDto selectByKey(AccountCategoryQuery query) {
        AccountCategoryDto result = new AccountCategoryDto();
        AccountCategoryBean accountCategoryBean = accountCategoryMapper.selectByKey(query.getId());
        if (accountCategoryBean == null) {
            result.setSuccess(false);
            result.setMessage("没有找到");
            result.setCode(StatusCode.INFO_NO_QUERY.getValue());
            return result;
        }
        result.setSuccess(true);
        result.setDataRow(accountCategoryBean);
        return result;
    }

    @Override
    public AccountCategoryDto selectCount(AccountCategoryQuery query) {
        return null;
    }

    @Override
    public AccountCategoryDto selectCountByOrgId(AccountCategoryQuery query) {
        AccountCategoryDto result = new AccountCategoryDto();
        UserBean userBean = query.getUserBean();
        Map<String, String> express = query.getExpress();
        express.put("orgId",userBean.getOrganizationId().toString());
        Long aLong = accountCategoryMapper.selectCount(express);
        if (aLong <=0) {
            result.setSuccess(false);
            result.setMessage("没有找到");
            result.setCode(StatusCode.INFO_NO_QUERY.getValue());
            return result;
        }
        result.setCount(aLong);
        result.setSuccess(true);
        return result;
    }

    @Override
    public AccountCategoryDto pageByQuery(AccountCategoryQuery query) {
        AccountCategoryDto result = new AccountCategoryDto();
        Map<String, String> express = query.getExpress();
        express.put("orgId",query.getUserBean().getOrganizationId().toString());
        int pageNum = query.getPageSize()*(query.getPageNum()-1);
        List<AccountCategoryBean> accountCategoryBeans = accountCategoryMapper.pageByQuery(pageNum, query.getPageSize(), express);
        if (CollectionUtils.isEmpty(accountCategoryBeans)) {
            result.setSuccess(false);
            result.setMessage("没有找到");
            result.setCode(StatusCode.INFO_NO_QUERY.getValue());
            return result;
        }
        result.setDataTable(accountCategoryBeans);
        result.setSuccess(true);
        return result;
    }

    @Override
    public AccountCategoryDto selectByQuery(AccountCategoryQuery query) {
        AccountCategoryDto result = new AccountCategoryDto();
        Map<String, String> express = query.getExpress();
        UserBean userBean = query.getUserBean();
        express.put("orgId",userBean.getOrganizationId().toString());
        List<AccountCategoryBean> accountCategoryBeans = accountCategoryMapper.selectByQuery(express);
        if(CollectionUtils.isEmpty(accountCategoryBeans)) {
            result.setSuccess(false);
            result.setMessage("没有找到");
            result.setCode(StatusCode.INFO_NO_QUERY.getValue());
            return result;
        }
        result.setSuccess(true);
        result.setDataTable(accountCategoryBeans);
        return result;
    }

    @Override
    public AccountCategoryDto onlyOneCode(AccountCategoryQuery query) {
        AccountCategoryDto result=new AccountCategoryDto();
        Map<String, String> express = query.getExpress();
        UserBean user = query.getUserBean();
        express.put("orgId",user.getOrganizationId().toString());
        Long aLong = accountCategoryMapper.selectCount(express);
        if (aLong<=0) {
            result.setSuccess(false);
            result.setMessage("获取错误");
            result.setCode(StatusCode.ERROR_QUERY.getValue());
            return result;
        }
        result.setSuccess(true);
        result.setCount(aLong);
        return result;
    }

    @Override
    public AccountCategoryDto onlyOneName(AccountCategoryQuery query) {
        AccountCategoryDto result=new AccountCategoryDto();
        UserBean userBean = query.getUserBean();
        Map<String, String> express = query.getExpress();
        express.put("orgId",userBean.getOrganizationId().toString());
        Long aLong = accountCategoryMapper.selectCount(express);
        if (aLong<=0) {
            result.setSuccess(false);
            result.setMessage("获取错误");
            result.setCode(StatusCode.ERROR_QUERY.getValue());
            return result;
        }
        result.setCount(aLong);
        result.setSuccess(true);
        return result;
    }

    @Override
    public AccountCategoryDto addFromExcel(AccountCategoryQuery query) {
        return null;
    }
}
