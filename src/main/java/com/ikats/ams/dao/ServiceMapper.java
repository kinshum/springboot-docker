package com.ikats.ams.dao;
import com.ikats.ams.entity.ServiceBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * @Author: jz
 * @Date: Created in 15:02 2017/8/8
 * @Description:
 */
@Mapper
public interface ServiceMapper {
    /** 添加单条记录 */
    int insert(ServiceBean record);

    /** 删除记录 - 根据主键 */
    int delete(Long id);

    /** 更新记录 - 根据主键 */
    int update(ServiceBean record);

    /** 查询记录 - 根据主键 */
    ServiceBean selectByKey(Long id);

    /** 筛选记录 */
    List<ServiceBean> selectByQuery(@Param("express") Map<String, String> express);

    /** 分页查询 */
    List<ServiceBean> pageByQuery(@Param("pageNum") int pageNum, @Param("pageSize") int pageSize, @Param("express") Map<String, String> express);

    //查询记录总数
    Long selectCount(@Param("express") Map<String, String> express);
}
