package com.ikats.ams.dao;

import com.ikats.ams.entity.AccountitemBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * @Author: jz
 * @Date: Created in 9:30 2017/8/30
 * @Description:
 */
@Mapper
public interface AccountitemMapper {

    /** 添加单条记录 */
    int insert(AccountitemBean record);

    /** 添加一批记录 */
    int insertList(List<AccountitemBean> records);

    /** 删除记录 - 根据主键 */
    int delete(Long id);

    /** 更新记录 - 根据主键 */
    int update(AccountitemBean record);

    /** 查询记录 - 根据主键 */
    AccountitemBean selectByKey(Long id);

    /** 分页查询 */
    List<AccountitemBean> pageByQuery(@Param("pageNum") int pageNum, @Param("pageSize") int pageSize, @Param("express") Map<String, String> express);

    /** 条件查询 */
    List<AccountitemBean> selectByQuery(@Param("express") Map<String, String> express);

    /** 根据id查询列表 */
    List<AccountitemBean> getItemListById(List<Long> ids);

    /** 查询记录数量 */
    Long selectCount(@Param("express") Map<String, String> express);

    /** 批量更新 */
    int updateAll(List<AccountitemBean> records);

    /** 审批 */
    int updateStatus(List<AccountitemBean> records);

    //交易金额求和
//    BigDecimal sum(AccountitemQuery query);
    AccountitemBean sum(@Param("express") Map<String, String> express);

    //交易金额分组求和
    List<AccountitemBean> sumA(@Param("express") Map<String, String> express);
}
