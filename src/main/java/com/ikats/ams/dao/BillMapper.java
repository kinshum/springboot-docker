package com.ikats.ams.dao;

import com.ikats.ams.entity.BillBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * Mapper
 *
 * 账单Ibatis接口
 *
 * 自动生成
 *
 * @author Administrator
 *
 * @version
 *       1.0, 2017-08-31 15:11:16
 */
@Mapper
public interface BillMapper {

    /** 添加单条记录 */
    int insert(BillBean record);

    /** 删除记录 - 根据主键 */
    int delete(Long id);

    /** 更新记录 - 根据主键 */
    int update(BillBean record);

    /** 查询记录 - 根据主键 */
    BillBean selectByKey(Long id);

    /** 分页查询 */
    List<BillBean> pageByQuery(@Param("pageNum") int pageNum, @Param("pageSize") int pageSize, @Param("express") Map<String, String> express);

    /** 查询记录数量 */
    Long selectCount(@Param("express") Map<String, String> express);

    /** 审批 */
    int updateStatus(List<BillBean> records);

    /** 开票 */
    int invoiced(BillBean record);

    /** 结款 */
    int paid(BillBean record);

}
