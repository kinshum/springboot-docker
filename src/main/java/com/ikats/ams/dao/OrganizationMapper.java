package com.ikats.ams.dao;

import com.ikats.ams.entity.OrganizationBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * Mapper
 * <p>
 * oms_subject数据操作接口
 */

@Mapper
public interface OrganizationMapper {

    /**
     * 保存单条记录
     */
    int insert(OrganizationBean record);

    /**
     * 查询记录 - 根据主键
     */
    OrganizationBean selectByKey(Long id);

    /**
     * 根据id修改
     */
    int updateByKey(OrganizationBean record);

    /* 验证公司代码的唯一*/
    OrganizationBean selectOrgId(String orgId);

    //删除单条组织
    int delete(Integer id);

    //分页查询
    List<OrganizationBean> pageByQuery(@Param("pageNum") int pageNum, @Param("pageSize") int pageSize, @Param("express") Map<String, String> express);

    //条件查询
    List<OrganizationBean> selectByQuery(@Param("express") Map<String, String> express);

    //分页的
    Long selectCount(@Param("express") Map<String, String> express);

    //根据客户公司编码找到组织编码
    OrganizationBean findOrgCodeByClientCode(String orgId);
}
