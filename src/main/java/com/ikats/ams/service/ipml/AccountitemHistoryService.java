package com.ikats.ams.service.ipml;

import com.ikats.ams.entity.dto.AccountitemDto;
import com.ikats.ams.entity.query.AccountitemQuery;
import com.ikats.ams.service.IAccountitemHistoryService;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * @Author: jz
 * @Date: Created in 16:14 2017/8/31
 * @Description:
 */
@org.springframework.stereotype.Service("accountitemHistoryService")
@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
public class AccountitemHistoryService implements IAccountitemHistoryService {


    @Override
    public AccountitemDto insert(AccountitemQuery query) {
        return null;
    }

    @Override
    public AccountitemDto delete(AccountitemQuery query) {
        return null;
    }

    @Override
    public AccountitemDto update(AccountitemQuery query) {
        return null;
    }

    @Override
    public AccountitemDto selectByKey(AccountitemQuery query) {
        return null;
    }

    @Override
    public AccountitemDto selectCount(AccountitemQuery query) {
        return null;
    }

    @Override
    public AccountitemDto pageByQuery(AccountitemQuery query) {
        return null;
    }
}
