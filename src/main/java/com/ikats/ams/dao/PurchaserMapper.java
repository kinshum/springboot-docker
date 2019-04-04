package com.ikats.ams.dao;

import com.ikats.ams.entity.PurchaserBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * @Author: jz
 * @Date: Created in 11:12 2017/8/4
 * @Description:
 */
@Mapper
public interface PurchaserMapper {

    /** 添加单条记录 */
    int insert(PurchaserBean record);

    /** 删除记录 - 根据主键 */
    int delete(Integer id);

    /** 删除记录 - 根据serviceId */
    int deleteServiceId(String serviceId);

    /** 更新记录 - 根据主键 */
    int update(PurchaserBean record);

    /** 查询记录 - 根据主键 */
    PurchaserBean selectByKey(Integer id);

    /** 分页查询 */
    List<PurchaserBean> pageByQuery(@Param("pageNum") int pageNum, @Param("pageSize") int pageSize, @Param("express") Map<String, String> express);

    /** 条件查询 */
    List<PurchaserBean> selectByQuery(@Param("express") Map<String, String> express);

    /** 查询记录数量 */
    Long selectCount(@Param("express") Map<String, String> express);

}
