package com.ikats.ams.dao;

import com.ikats.ams.entity.AccountCategoryBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * @Author: jz
 * @Date: Created in 10:08 2017/8/30
 * @Description:
 */
@Mapper
public interface AccountCategoryMapper {

    /** 添加单条记录 */
    int insert(AccountCategoryBean record);

    /** 删除记录 - 根据主键 */
    int delete(Long id);

    /** 更新记录 - 根据主键 */
    int update(AccountCategoryBean record);

    /** 查询记录 - 根据主键 */
    AccountCategoryBean selectByKey(Long id);

    /** 分页查询 */
    List<AccountCategoryBean> pageByQuery(@Param("pageNum") int pageNum, @Param("pageSize") int pageSize, @Param("express") Map<String, String> express);

    /** 条件查询不分页 */
    List<AccountCategoryBean> selectByQuery(@Param("express") Map<String, String> express);

    /** 查询记录数量 */
    Long selectCount(@Param("express") Map<String, String> express);
}
