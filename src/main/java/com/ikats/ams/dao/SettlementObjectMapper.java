package com.ikats.ams.dao;

import com.ikats.ams.entity.SettlementObjectBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

/**
 * @Author: jz
 * @Date: Created in 16:06 2017/8/29
 * @Description:
 */
@Mapper
public interface SettlementObjectMapper {
    /** 添加单条记录 */
    int insert(SettlementObjectBean record);

    /** 删除记录 - 根据主键 */
    int delete(Long id);

    /** 更新记录 - 根据主键 */
    int update(SettlementObjectBean record);

    /** 查询记录 - 根据主键 */
    SettlementObjectBean selectByKey(Long id);

    /** 分页查询 */
    List<SettlementObjectBean> pageByQuery(@Param("pageNum") int pageNum, @Param("pageSize") int pageSize, @Param("express") Map<String, String> express);

    /** 分页查询 */
    List<SettlementObjectBean> selectByQuery(@Param("express") Map<String, String> express);

    /** 查询记录数量 */
    Long selectCount(@Param("express") Map<String, String> express);

    @Select("SELECT aso.currency FROM ams_settlement_object aso WHERE aso.settlement_object_id = #{SettlementObjectId}")
    String getCurrencyrBySettlementObjectId(@Param("SettlementObjectId") String SettlementObjectId);

}
