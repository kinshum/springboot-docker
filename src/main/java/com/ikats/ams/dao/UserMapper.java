package com.ikats.ams.dao;

import com.ikats.ams.entity.UserBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;


@Mapper
public interface UserMapper {
    int insert(UserBean recorder);

    int updateByKey(UserBean recorder);

    /** 查询记录 - 根据主键 */
    UserBean selectByKey(Long id);

    /** 删除记录 - 根据主键 */
    int delete(Long id);

    //分页查询
    List<UserBean> pageByQuery(@Param("pageNum") int pageNum, @Param("pageSize") int pageSize, @Param("express") Map<String, String> express);
    //计算总数
    Long selectCount(@Param("express") Map<String, String> express);
    //条件查询
    List<UserBean> selectByQuery(@Param("express") Map<String, String> express);

}
