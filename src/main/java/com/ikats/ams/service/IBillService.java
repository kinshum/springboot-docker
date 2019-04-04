package com.ikats.ams.service;


import com.ikats.ams.entity.dto.BillDTO;
import com.ikats.ams.entity.query.BillQuery;


public interface IBillService {

     BillDTO insert(BillQuery query);

     BillDTO deleteByKey(BillQuery query);

     BillDTO update(BillQuery query);

     BillDTO selectByKey(BillQuery query);

    /**
     * 服务接口:获取数据数量
     * @param query
     * @return AccountCategoryDto
     */
    BillDTO selectCount(BillQuery query);

    /**
     * 服务接口:获取数据数量根据组织id
     * @param query
     * @return AccountCategoryDto
     */
    BillDTO selectCountByOrgId(BillQuery query);


     BillDTO pageByQuery(BillQuery query);

    /**
     * 服务接口:审批
     * @param query
     * @return AccountitemDto
     */
     BillDTO updateStatus(BillQuery query);

    /**
     * 服务接口:开票
     * @param query
     * @return AccountitemDto
     */
     BillDTO invoiced(BillQuery query);

    /**
     * 服务接口:结款
     * @param query
     * @return AccountitemDto
     */
     BillDTO paid(BillQuery query);

    //修改备注
     BillDTO modify(BillQuery query);

    //验证发票唯一
     BillDTO onlyOne(BillQuery query);

}
