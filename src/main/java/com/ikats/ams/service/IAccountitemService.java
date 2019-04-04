package com.ikats.ams.service;



import com.ikats.ams.entity.AccountitemCopyDto;
import com.ikats.ams.entity.dto.AccountitemDto;
import com.ikats.ams.entity.query.AccountitemQuery;

import java.util.HashMap;


public interface IAccountitemService {


    /**
     * 服务接口:添加记账明细
     * @param query
     * @return AccountitemDto
     */
     AccountitemDto insert(AccountitemQuery query, HashMap<String,Object> params);

    /**
     * 服务接口:多行添加记账明细
     * @param query
     * @return AccountitemDto
     */
     AccountitemDto insertList(AccountitemQuery query);

    //批量添加
    AccountitemDto batchNew(AccountitemQuery query);

    /**
     * 服务接口:删除记账明细
     * @param query
     * @return AccountitemDto
     */
     AccountitemDto delete(AccountitemQuery query);

    /**
     * 服务接口:更新记账明细
     * @param query
     * @return AccountitemDto
     */
     AccountitemDto update(AccountitemQuery query, HashMap<String,Object> params);

    /**
     * 服务接口:获取单行记账明细
     * @param query
     * @return AccountitemDto
     */
     AccountitemDto selectByKey(AccountitemQuery query);

    /**
     * 服务接口:获取数据数量
     * @param query
     * @return AccountCategoryDto
     */
    AccountitemDto selectCount(AccountitemQuery query);

    /**
     * 服务接口:获取数据数量
     * @param query
     * @return AccountCategoryDto
     */
    AccountitemDto selectCountByOrgId(AccountitemQuery query);

    /**
     * 服务接口:翻页查询记账明细
     * @param query
     * @return AccountitemDto
     */
     AccountitemDto pageByQuery(AccountitemQuery query);

    /**
     * 服务接口:批量修改
     * @param query
     * @return AccountitemDto
     */
     AccountitemDto updateAll(AccountitemQuery query);

    /**
     * 服务接口:审批
     * @param query
     * @return AccountitemDto
     */
     AccountitemDto updateStatus(AccountitemQuery query);

    /**
     * @param query
     * @return AccountitemDto
     */
    AccountitemDto getItemListById(AccountitemQuery query);

    HashMap addAccountExpenses(AccountitemCopyDto accountitemDto);
}
