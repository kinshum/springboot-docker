package com.ikats.ams.dao;

import com.ikats.ams.entity.ServiceSelfBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * Mapper
 *
 * 服务关联表Ibatis接口
 *
 * 自动生成
 *
 * @author Administrator
 *
 * @version
 *       1.0, 2017-08-14 10:37:55
 */
@Mapper
public interface ServiceSelfMapper {
    /** 添加单条记录 */
    int insert(ServiceSelfBean record);

    /** 添加一批记录 */
    int insertList(List<ServiceSelfBean> records);

    /** 删除记录 - 根据主键 */
    int delete(Long id);

    /** 更新记录 - 根据主键 */
    int update(ServiceSelfBean record);

    /** 查询记录 - 根据主键 */
    ServiceSelfBean selectByKey(Long id);

    /** 筛选记录 */
    List<ServiceSelfBean> selectByQuery(@Param("express") Map<String, String> express);

    /** 分页查询 */
    List<ServiceSelfBean> pageByQuery(@Param("pageNum") int pageNum, @Param("pageSize") int pageSize, @Param("express") Map<String, String> express);

    //查询记录总数
    Long selectCount(@Param("express") Map<String, String> express);
}
