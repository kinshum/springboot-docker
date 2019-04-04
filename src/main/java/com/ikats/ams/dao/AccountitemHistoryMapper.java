package com.ikats.ams.dao;

import com.ikats.ams.entity.AccountitemBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * @Author: jz
 * @Date: Created in 15:45 2017/8/31
 * @Description:
 */
@Mapper
public interface AccountitemHistoryMapper {

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

    /** 查询记录数量 */
    Long selectCount(@Param("express") Map<String, String> express);
}
