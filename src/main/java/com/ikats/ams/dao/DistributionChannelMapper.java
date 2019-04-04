package com.ikats.ams.dao;

import com.ikats.ams.entity.DistributionChannelBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * Mapper
 *
 * 分销渠道表Ibatis接口
 *
 * 自动生成
 *
 * @author Administrator
 *
 * @version
 *       1.0, 2017-08-29 08:52:34
 */
@Mapper
public interface DistributionChannelMapper {

    /** 添加单条记录 */
    int insert(DistributionChannelBean record);

    /** 删除记录 - 根据主键 */
    int delete(Long id);

    /** 删除记录 - 根据servioceid */
    int deleteServiceId(String id);


    /** 更新记录 - 根据主键 */
    int update(DistributionChannelBean record);

    /** 查询记录 - 根据主键 */
    DistributionChannelBean selectByKey(Long id);

    /** 分页查询 */
    List<DistributionChannelBean> pageByQuery(@Param("pageNum") int pageNum, @Param("pageSize") int pageSize, @Param("express") Map<String, String> express);

    /** 条件查询 */
    List<DistributionChannelBean> selectByquery(@Param("express") Map<String, String> express);

    /** 查询记录数量 */
    Long selectCount(@Param("express") Map<String, String> express);
}
