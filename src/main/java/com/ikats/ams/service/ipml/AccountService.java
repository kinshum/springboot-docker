package com.ikats.ams.service.ipml;


import com.ikats.ams.dao.AccountMapper;
import com.ikats.ams.entity.AccountBean;
import com.ikats.ams.entity.dto.AccountDTO;
import com.ikats.ams.entity.enumerate.StatusCode;
import com.ikats.ams.entity.query.AccountQuery;
import com.ikats.ams.service.IAccountService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
public class AccountService implements IAccountService {

    @Autowired
    private AccountMapper accountMapper;

    @Override
    public AccountDTO insert(AccountQuery accountQuery) {
        return null;
    }

    @Override
    public AccountDTO newAccount(AccountQuery accountQuery) {
        return null;
    }

    @Override
    public AccountDTO selectByKey(AccountQuery accountQuery) {
        return null;
    }

    @Override
    public AccountDTO selectCount(AccountQuery query) {
        return null;
    }

    @Override
    public AccountDTO selectCountByOrgId(AccountQuery query) {
        return null;
    }

    @Override
    public AccountDTO selectAll(AccountQuery accountQuery) {
            AccountDTO result=new AccountDTO();
            Map<String,String> params =  accountQuery.getExpress();
            params.put("orgId", accountQuery.getUserBean() != null ? accountQuery.getUserBean().getOrganizationId().toString():"");
            int pageNum = accountQuery.getPageSize() * (accountQuery.getPageNum() - 1);
            List<AccountBean> beanList = accountMapper.selectAll(pageNum,accountQuery.getPageSize(),params);
            if(beanList.size() == 0) {
                result.setSuccess(false);
                result.setMessage("没有找到");
                result.setCode(StatusCode.INFO_NO_QUERY.getValue());
                return result;
            }
            result.setDataTable(beanList);
            result.setSuccess(true);
            return result;
    }

    @Override
    public AccountDTO updateByKey(AccountQuery accountQuery) {
        return null;
    }

    @Override
    public AccountDTO deleteByKey(AccountQuery accountQuery) {
        return null;
    }
}
