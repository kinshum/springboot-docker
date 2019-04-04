package com.ikats.ams.service;


import com.ikats.ams.entity.dto.ServiceDto;
import com.ikats.ams.entity.query.ServiceQuery;

/**
 * @Date: Created in 15:30 2017/8/8
 * @Description:
 */
public interface IServiceService {

    /**
     * 服务接口:添加清关服务
     *
     * @param query
     * @return ServiceDto
     */
    ServiceDto customsInsert(ServiceQuery query);

    /**
     * 服务接口:添加分销服务
     *
     * @param query
     * @return ServiceDto
     */
    ServiceDto distributionInsert(ServiceQuery query);

    /**
     * 服务接口:添加采购服务
     *
     * @param query
     * @return ServiceDto
     */
    ServiceDto purchaseInsert(ServiceQuery query);

    /**
     * 服务接口:添加仓储服务
     *
     * @param query
     * @return ServiceDto
     */
    ServiceDto warehouseInsert(ServiceQuery query);

    /**
     * 服务接口:添加分销渠道服务
     *
     * @param query
     * @return ServiceDto
     */
    ServiceDto channelInsert(ServiceQuery query);

    /**
     * 服务接口:删除服务表
     *
     * @param query
     * @return ServiceDto
     */
    ServiceDto deleteByKey(ServiceQuery query);

    /**
     * 服务接口:更新清关服务表
     *
     * @param query
     * @return ServiceDto
     */
    ServiceDto modifyCustomsService(ServiceQuery query);

    /**
     * 服务接口:更新分销服务表
     *
     * @param query
     * @return ServiceDto
     */
    ServiceDto modifyDistributionService(ServiceQuery query);

    /**
     * 服务接口:更新采购服务表
     *
     * @param query
     * @return ServiceDto
     */
    ServiceDto modifyPurchaserService(ServiceQuery query);

    /**
     * 服务接口:更新仓储服务表
     *
     * @param query
     * @return ServiceDto
     */
    ServiceDto modifyWarehouseService(ServiceQuery query);

    /**
     * 服务接口:更新仓储服务表
     *
     * @param query
     * @return ServiceDto
     */
    ServiceDto modifyDistributionChannelService(ServiceQuery query);

    /**
     * 服务接口:获取单行服务表
     *
     * @param query
     * @return ServiceDto
     */
    ServiceDto selectByKey(ServiceQuery query);

    /**
     * 服务接口:获取服务对应信息
     *
     * @param query
     * @return ServiceDto
     */
    ServiceDto selectService(ServiceQuery query);

    /**
     * 服务接口:翻页查询服务表
     *
     * @param query
     * @return ServiceDto
     */
    ServiceDto pageByQuery(ServiceQuery query);

    /**
     * 服务接口:查询服务表
     *
     * @param query
     * @return ServiceDto
     */
    ServiceDto selectByQuery(ServiceQuery query);

    /**
     * 服务接口:得到一条服务和其扩展信息
     *
     * @param query
     * @return ServiceDto
     */
    ServiceDto selectByKeyAll(ServiceQuery query);

    /**
     * 服务接口:shuliang
     *
     * @param query
     * @return ServiceDto
     */
    ServiceDto selectCountByOrgId(ServiceQuery query);


}
