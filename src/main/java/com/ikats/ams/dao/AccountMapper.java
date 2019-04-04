package com.ikats.ams.dao;




import com.ikats.ams.entity.AccountBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;


import java.util.List;
import java.util.Map;


/**
 * Mapper
 * 
 * 附件管理数据操作接口
 */
@Mapper
public interface AccountMapper {

    /** 保存单条记录 */
    int insert(AccountBean accountBean);

    /** 查询记录 - 根据主键 */
    AccountBean selectByKey(Long id);

    /** 筛选记录 */
    List<AccountBean> selectAll(@Param("pageNum") int pageNum, @Param("pageSize") int pageSize, @Param("express") Map<String, String> express);

  /*   更新记录 - 根据主键 */
    int updateByKey(AccountBean record);

    /** 删除记录 - 根据主键 */
    int deleteByKey(Long id);

    /** 查询记录数量 */
    Long selectCount(@Param("express") Map<String, String> express);


}
