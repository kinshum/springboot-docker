package com.ikats.ams.service;

import com.ikats.ams.entity.dto.SettlementObjectDto;
import com.ikats.ams.entity.query.SettlementObjectQuery;

/**
 * Interface
 *
 * 结算对象
 *
 * 自动生成
 *
 * @author Administrator
 *
 * @version
 *       1.0, 2017-08-29 15:53:05
 */
public interface ISettlementObjectService {

    /**
     * 服务接口:添加结算对象
     * @param query
     * @return SettlementObjectDto
     */
     SettlementObjectDto insert(SettlementObjectQuery query);

    /**
     * 服务接口:添加结算对象
     * @param query
     * @return SettlementObjectDto
     */
    SettlementObjectDto newSettlement(SettlementObjectQuery query);

    /**
     * 服务接口:删除结算对象
     * @param query
     * @return SettlementObjectDto
     */
     SettlementObjectDto delete(SettlementObjectQuery query);

    /**
     * 服务接口:更新结算对象
     * @param query
     * @return SettlementObjectDto
     */
     SettlementObjectDto update(SettlementObjectQuery query);

    /**
     * 服务接口:获取单行结算对象
     * @param query
     * @return AmsSettlementObjectDto
     */
     SettlementObjectDto selectByKey(SettlementObjectQuery query);

    /**
     * 服务接口:获取数据数量
     * @param query
     * @return AccountCategoryDto
     */
    SettlementObjectDto selectCount(SettlementObjectQuery query);

    /**
     * 服务接口:获取数据数量根据组织id
     * @param query
     * @return AccountCategoryDto
     */
    SettlementObjectDto selectCountByOrgId(SettlementObjectQuery query);

    /**
     * 服务接口:翻页查询结算对象
     * @param query
     * @return SettlementObjectDto
     */
     SettlementObjectDto pageByQuery(SettlementObjectQuery query);

    /**
     * 服务接口:翻页查询结算对象
     * @param query
     * @return SettlementObjectDto
     */
    SettlementObjectDto selectByQuery(SettlementObjectQuery query);


    /**
     * 服务接口:验证结算对象唯一性
     * @param query
     * @return AmsSettlementObjectDto
     */
     SettlementObjectDto onlyOne(SettlementObjectQuery query);

    /**
     * 服务接口:验证结算对象名字唯一性
     * @param query
     * @return AmsSettlementObjectDto
     */
     SettlementObjectDto onlyOneName(SettlementObjectQuery query);

}
