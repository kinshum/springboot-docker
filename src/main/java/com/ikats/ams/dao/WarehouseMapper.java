package com.ikats.ams.dao;

import com.ikats.ams.entity.WarehouseBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * Mapper
 *
 * 仓库参数表Ibatis接口
 *
 * 自动生成
 *
 * @author Administrator
 *
 * @version
 *       1.0, 2017-08-10 09:59:45
 */
@Mapper
public interface WarehouseMapper {

    /** 添加单条记录 */
    int insert(WarehouseBean record);

    /** 删除记录 - 根据主键 */
    int delete(Integer id);

    /** 删除记录 - 根据serviceId */
    int deleteServiceId(String serviceId);

    /** 更新记录 - 根据主键 */
    int update(WarehouseBean record);

    /** 查询记录 - 根据主键 */
    WarehouseBean selectByKey(Integer id);

    /** 分页查询 */
    List<WarehouseBean> pageByQuery(@Param("pageNum") int pageNum, @Param("pageSize") int pageSize, @Param("express") Map<String, String> express);


    List<WarehouseBean> selectByQuery(@Param("express") Map<String, String> express);

    /** 查询记录数量 */
    Long selectCount(@Param("express") Map<String, String> express);

}
