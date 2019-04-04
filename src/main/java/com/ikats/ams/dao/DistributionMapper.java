package com.ikats.ams.dao;

import com.ikats.ams.entity.DistributionBean;
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
public interface DistributionMapper {

    /** 添加单条记录 */
    int insert(DistributionBean record);

    /** 删除记录 - 根据主键 */
    int delete(Integer id);

    /** 删除记录 - 根据serviceId */
    int deleteServiceId(String serviceId);

    /** 更新记录 - 根据主键 */
    int update(DistributionBean record);

    /** 查询记录 - 根据主键 */
    DistributionBean selectByKey(Integer id);

    /** 分页查询 */
    List<DistributionBean> pageByQuery(@Param("pageNum") int pageNum, @Param("pageSize") int pageSize, @Param("express") Map<String, String> express);

    /** 分页查询 */
    List<DistributionBean> selectByQuery(@Param("express") Map<String, String> express);

    /** 查询记录数量 */
    Long selectCount(@Param("express") Map<String, String> express);

}
