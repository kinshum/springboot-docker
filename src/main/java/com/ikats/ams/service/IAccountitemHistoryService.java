package com.ikats.ams.service;


import com.ikats.ams.entity.dto.AccountitemDto;
import com.ikats.ams.entity.query.AccountitemQuery;


public interface IAccountitemHistoryService {

    /**
     * 服务接口:添加记账明细历史版本
     * @param query
     * @return AccountitemDto
     */
     AccountitemDto insert(AccountitemQuery query);

    /**
     * 服务接口:删除记账明细历史版本
     * @param query
     * @return AccountitemDto
     */
    AccountitemDto delete(AccountitemQuery query);

    /**
     * 服务接口:更新记账明细历史版本
     * @param query
     * @return AccountitemDto
     */
    AccountitemDto update(AccountitemQuery query);

    /**
     * 服务接口:获取单行记账明细历史版本
     * @param query
     * @return AccountitemDto
     */
    AccountitemDto selectByKey(AccountitemQuery query);

    /**
     * 服务接口:获取数据数量
     * @param query
     * @return AccountitemDto
     */
    AccountitemDto selectCount(AccountitemQuery query);

    /**
     * 服务接口:翻页查询记账明细历史版本
     * @param query
     * @return AccountitemHistoryDto
     */
    AccountitemDto pageByQuery(AccountitemQuery query);
}
