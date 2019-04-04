package com.ikats.ams.service;

import com.ikats.ams.entity.dto.AmsBusinessTypeDto;
import com.ikats.ams.entity.query.AmsBusinessTypeQuery;

public interface IAmsBusinessTypeService {

    /**
     * 服务接口:添加业务类型
     *
     * @param query
     * @return AmsBusinessTypeDto
     */
    AmsBusinessTypeDto insert(AmsBusinessTypeQuery query);

    /**
     * 服务接口:删除业务类型
     *
     * @param query
     * @return AmsBusinessTypeDto
     */
    AmsBusinessTypeDto delete(AmsBusinessTypeQuery query);

    /**
     * 服务接口:更新业务类型
     *
     * @param query
     * @return AmsBusinessTypeDto
     */
    AmsBusinessTypeDto update(AmsBusinessTypeQuery query);

    /**
     * 服务接口:获取单行业务类型
     *
     * @param query
     * @return AmsBusinessTypeDto
     */
    AmsBusinessTypeDto selectByKey(AmsBusinessTypeQuery query);

    /**
     * 服务接口:获取数据数量
     *
     * @param query
     * @return AccountCategoryDto
     */
    AmsBusinessTypeDto selectCount(AmsBusinessTypeQuery query);

    /**
     * 服务接口:获取数据数量OrgId
     *
     * @param query
     * @return AccountCategoryDto
     */
    AmsBusinessTypeDto selectCountByOrgId(AmsBusinessTypeQuery query);

    /**
     * 服务接口:翻页查询业务类型
     *
     * @param query
     * @return AmsBusinessTypeDto
     */
    AmsBusinessTypeDto pageByQuery(AmsBusinessTypeQuery query);

    /**
     * 服务接口:翻页查询业务类型
     *
     * @param query
     * @return AmsBusinessTypeDto
     */
    AmsBusinessTypeDto selectByQuery(AmsBusinessTypeQuery query);

    /**
     * 服务接口:翻页查询业务类型
     *
     * @param query
     * @return AmsBusinessTypeDto
     */
    AmsBusinessTypeDto onlyOne(AmsBusinessTypeQuery query);
}
