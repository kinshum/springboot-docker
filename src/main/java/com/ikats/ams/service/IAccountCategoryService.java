package com.ikats.ams.service;


import com.ikats.ams.entity.dto.AccountCategoryDto;
import com.ikats.ams.entity.query.AccountCategoryQuery;

public interface IAccountCategoryService {

    /**
     * 服务接口:添加财务科目
     * @param query
     * @return AccountCategoryDto
     */
     AccountCategoryDto insert(AccountCategoryQuery query);

    /**
     * 服务接口:删除财务科目
     * @param query
     * @return AccountCategoryDto
     */
     AccountCategoryDto delete(AccountCategoryQuery query);

    /**
     * 服务接口:更新财务科目
     * @param query
     * @return AccountCategoryDto
     */
     AccountCategoryDto update(AccountCategoryQuery query);

    /**
     * 服务接口:获取单行财务科目
     * @param query
     * @return AccountCategoryDto
     */
     AccountCategoryDto selectByKey(AccountCategoryQuery query);

    /**
     * 服务接口:获取数据数量
     * @param query
     * @return AccountCategoryDto
     */
    AccountCategoryDto selectCount(AccountCategoryQuery query);

    /**
     * 服务接口:获取数据数量根据组织id
     * @param query
     * @return AccountCategoryDto
     */
    AccountCategoryDto selectCountByOrgId(AccountCategoryQuery query);

    /**
     * 服务接口:翻页查询财务科目
     * @param query
     * @return AccountCategoryDto
     */
     AccountCategoryDto pageByQuery(AccountCategoryQuery query);

    /**
     * 服务接口:条件查询财务科目
     * @param query
     * @return AccountCategoryDto
     */
    AccountCategoryDto selectByQuery(AccountCategoryQuery query);

    /**
     * 服务接口:验证记账科目编码唯一性
     * @param query
     * @return AmsSettlementObjectDto
     */
     AccountCategoryDto onlyOneCode(AccountCategoryQuery query);

    /**
     * 服务接口:验证记账科目编码唯一性
     * @param query
     * @return AmsSettlementObjectDto
     */
     AccountCategoryDto onlyOneName(AccountCategoryQuery query);

    /**
     * 服务接口:导入财务科目
     * @param query
     * @return AccountCategoryDto
     */
     AccountCategoryDto addFromExcel(AccountCategoryQuery query);
}
