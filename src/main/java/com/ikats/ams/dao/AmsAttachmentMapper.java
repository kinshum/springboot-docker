package com.ikats.ams.dao;

import com.ikats.ams.entity.AmsAttachmentBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * @Author: jz
 * @Date: Created in 9:40 2017/9/13
 * @Description:
 */
@Mapper
public interface AmsAttachmentMapper {

    /** 添加单条记录 */
    int insert(AmsAttachmentBean record);

    /** 删除记录 - 根据主键 */
    int delete(Long id);

    /** 更新记录 - 根据主键 */
    int update(AmsAttachmentBean record);

    /** 查询记录 - 根据主键 */
    AmsAttachmentBean selectByKey(Long id);

    /** 分页查询 */
    List<AmsAttachmentBean> pageByQuery(@Param("pageNum") int pageNum, @Param("pageSize") int pageSize, @Param("express") Map<String, String> express);

    /** 查询记录数量 */
    Long selectCount(@Param("express") Map<String, String> express);

    /** 删除记录 - 根据收支id */
    int deleteItem(Integer id);

    /** 删除记录 - 根据账单id */
    int deleteBill(Integer id);

    /** 查询记录 - 根据itemId */
    AmsAttachmentBean selectByItem(Long id);

    /** 查询记录 - 根据billId */
    AmsAttachmentBean selectByBill(Long id);
}
