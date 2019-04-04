package com.ikats.ams.service;



import com.ikats.ams.entity.dto.UserDTO;
import com.ikats.ams.entity.query.UserQuery;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

public interface IUserService {

    UserDTO selectAllByQuery(UserQuery query);

    UserDTO selectByKey(UserQuery query);

    UserDTO updateByKey(UserQuery query) throws NoSuchAlgorithmException, UnsupportedEncodingException;

    //修改密码
    UserDTO updatePassword(UserQuery query) throws NoSuchAlgorithmException, UnsupportedEncodingException;

    //注册用户
    UserDTO addNewUser(UserQuery query) throws NoSuchAlgorithmException, UnsupportedEncodingException;

    //注册用户
    UserDTO addCustomerUser(UserQuery query) throws NoSuchAlgorithmException, UnsupportedEncodingException;

    //消费者用户登录
    UserDTO conLogin(UserQuery query) throws NoSuchAlgorithmException, UnsupportedEncodingException;

    //组织用户登录
    UserDTO orgLogin(UserQuery query) throws NoSuchAlgorithmException, UnsupportedEncodingException;

    //普通用户用户登录
    UserDTO comLogin(UserQuery query) throws NoSuchAlgorithmException, UnsupportedEncodingException;

    //判断邮箱或者密码是否存在
    UserDTO ifUserExist(UserQuery query);

    /**
     * 服务接口:删除用户表
     *
     * @param query
     * @return CmsUserDto
     */
    UserDTO delete(UserQuery query);

    /**
     * 服务接口:用户激活
     *
     * @param query
     * @return CmsUserDto
     */
    UserDTO activate(UserQuery query);

    /**
     * 服务接口:用户激活
     *
     * @param query
     * @return CmsUserDto
     */
    UserDTO selectCountByOrgId(UserQuery query);
}
