package com.ikats.ams.service;


import com.ikats.ams.entity.dto.AccountDTO;
import com.ikats.ams.entity.query.AccountQuery;

/**
 * @Author:XiaLiYong
 * @Date:Created in 17:03 2017/8/29
 */
public interface IAccountService {

    /** 保存单条记录 */
    AccountDTO insert(AccountQuery accountQuery);

    /** 创建账套 */
    AccountDTO newAccount(AccountQuery accountQuery);

    /** 查询记录 - 根据主键 */
    AccountDTO selectByKey(AccountQuery accountQuery);

    /**
     * 服务接口:获取数据数量
     * @param query
     * @return AccountCategoryDto
     */
    AccountDTO selectCount(AccountQuery query);
    /**
     * 服务接口:获取数据数量根据主键id
     * @param query
     * @return AccountCategoryDto
     */
    AccountDTO selectCountByOrgId(AccountQuery query);


    /** 筛选记录 */
    AccountDTO selectAll(AccountQuery accountQuery);

    /*   更新记录 - 根据主键 */
    AccountDTO updateByKey(AccountQuery accountQuery);

    /** 删除记录 - 根据主键 */
    AccountDTO deleteByKey(AccountQuery accountQuery);


}
