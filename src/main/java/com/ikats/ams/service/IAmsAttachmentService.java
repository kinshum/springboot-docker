package com.ikats.ams.service;

import com.ikats.ams.entity.dto.AmsAttachmentDto;
import com.ikats.ams.entity.query.AmsAttachmentQuery;


public interface IAmsAttachmentService {

    /**
     * 服务接口:添加附件管理表
     *
     * @param query
     * @return AmsAttachmentDto
     */
    AmsAttachmentDto insert(AmsAttachmentQuery query);

    /**
     * 服务接口:删除附件管理表
     *
     * @param query
     * @return AmsAttachmentDto
     */
    AmsAttachmentDto delete(AmsAttachmentQuery query);

    /**
     * 服务接口:更新附件管理表
     *
     * @param query
     * @return AmsAttachmentDto
     */
    AmsAttachmentDto update(AmsAttachmentQuery query);

    /**
     * 服务接口:获取单行附件管理表
     *
     * @param query
     * @return AmsAttachmentDto
     */
    AmsAttachmentDto selectByKey(AmsAttachmentQuery query);

    /**
     * 服务接口:获取数据数量
     *
     * @param query
     * @return AccountCategoryDto
     */
    AmsAttachmentDto selectCount(AmsAttachmentQuery query);

    /**
     * 服务接口:翻页查询附件管理表
     *
     * @param query
     * @return AmsAttachmentDto
     */
    AmsAttachmentDto pageByQuery(AmsAttachmentQuery query);
}
