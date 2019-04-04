package com.ikats.ams.service.ipml;

import com.ikats.ams.dao.UserMapper;
import com.ikats.ams.entity.UserBean;
import com.ikats.ams.entity.dto.UserDTO;
import com.ikats.ams.entity.enumerate.StatusCode;
import com.ikats.ams.entity.enumerate.UserStatusType;
import com.ikats.ams.entity.query.UserQuery;
import com.ikats.ams.service.IUserService;

import com.ikats.common.util.Md5Util;
import com.ikats.common.util.Tools;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.springframework.util.CollectionUtils;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

import static com.ikats.common.util.Md5Util.EncoderByMd5;


@Service
public class UserService implements IUserService {


    @Autowired
    private UserMapper userMapper;


    @Override
    public UserDTO selectAllByQuery(UserQuery query) {
        UserDTO result = new UserDTO();
        int pageNum = query.getPageSize()*(query.getPageNum()-1);
        UserBean dataTable = query.getDataRow();
        Map<String, String> express = query.getExpress();
        if (!express.containsKey("organizationId")) {
            express.put("organizationId", dataTable != null ? dataTable.getOrganizationId().toString(): "");
        }
        List<UserBean> userBeans = userMapper.pageByQuery(pageNum, query.getPageSize(), express);
        if (CollectionUtils.isEmpty(userBeans)) {
            result.setSuccess(false);
            result.setMessage("获取错误");
            result.setCode(StatusCode.ERROR_QUERY.getValue());
            return result;
        }
        result.setSuccess(true);
        result.setDataTable(userBeans);
        return result;
    }

    @Override
    public UserDTO selectByKey(UserQuery query) {
        UserDTO result = new UserDTO();
        UserBean userBean = userMapper.selectByKey(query.getUserId());
        if (userBean == null){
            result.setSuccess(false);
            result.setMessage("获取错误");
            result.setCode(StatusCode.ERROR_QUERY.getValue());
        }
        result.setDataRow(userBean);
        result.setSuccess(true);
        return result;
    }

    @Override
    public UserDTO updateByKey(UserQuery query) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        return null;
    }

    @Override
    public UserDTO updatePassword(UserQuery query) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        UserDTO result = new UserDTO();
        UserBean bean = userMapper.selectByKey(query.getUserId());
        Map<String, String> express = query.getExpress();
        String password = bean.getPassword();
        if (bean != null && !Objects.equals("", password)) {
            if (express.get("oldpwd") == null || express.get("newpwd") == null || express.get("confirm") == null) {
                result.setSuccess(false);
                result.setMessage("请确认旧密码,新密码,以及确认密码都已输入");
                result.setCode(StatusCode.INFO_CONFIRM_EXIST_PWD.getValue());
                 return result;
            }
            String oldpwd = express.get("oldpwd");//旧密码
            String newpwd = express.get("newpwd");//新密码
            String confirm = express.get("confirm");//确认新密码
            String MDoldpwd = EncoderByMd5(oldpwd);
            if (!MDoldpwd.equals(password)) {//判断旧密码是否正确
                result.setSuccess(false);
                result.setMessage("旧密码输入错误");
                result.setCode(StatusCode.INFO_OLD_PWD.getValue());
                return result;
            }
            if (!newpwd.equals(confirm)) {//判断输入的两个新密码是否一致
                result.setSuccess(false);
                result.setMessage("抱歉，新密码输入不一致");
                result.setCode(StatusCode.INFO_NEW_PWD.getValue());
                return result;
            }
            if (EncoderByMd5(newpwd).equals(password) && EncoderByMd5(newpwd).equals(password)) {
                result.setSuccess(false);
                result.setMessage("密码没有改动");
                result.setCode(StatusCode.INFO_NO_MODIFY_PWD.getValue());
                return result;
            }
            //如果新密码与原密码不同，执行更新密码操作
            bean.setPassword(EncoderByMd5(newpwd));
            int count = userMapper.updateByKey(bean);
            if (count <= 0) {
                result.setSuccess(false);
                result.setMessage("没有更新");
                result.setCode(StatusCode.INFO_NO_UPDATE.getValue());
                return result;
            }
            result.setSuccess(true);

        }
        return result;
    }



    @Override
    public UserDTO addNewUser(UserQuery query) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        return null;
    }

    @Override
    public UserDTO addCustomerUser(UserQuery query) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        return null;
    }

    @Override
    public UserDTO conLogin(UserQuery query) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        return null;
    }


    @Override
    public UserDTO orgLogin(UserQuery query) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        UserDTO userDTO = new UserDTO();
        Map<String, String> express = query.getExpress();
        Map<String,String> params = new HashMap<>();
        params.put("userName",express.get("userName"));
        List<UserBean> userBeans = userMapper.selectByQuery(params);
        express.put("password", Md5Util.EncoderByMd5(express.get("password")));
        if (userBeans.size() != 1) {
            userDTO.setSuccess(false);
            userDTO.setMessage("该用户不存在");
            userDTO.setCode(StatusCode.INFO_USER_NO_EXIST.getValue());
            return userDTO;
        }
        else if (userBeans.get(0).getUserStatus().equals(UserStatusType.LOCKED.getValue())) {
            userDTO.setSuccess(false);
            userDTO.setMessage("该用户被锁定");
            userDTO.setCode(StatusCode.INFO_USER_LOCKING.getValue());
            return userDTO;

        }
        else if (userBeans.get(0).getUserStatus().equals(UserStatusType.DISABLE.getValue())) {
            userDTO.setSuccess(false);
            userDTO.setMessage("账号无效");
            userDTO.setCode(StatusCode.INFO_ACCOUNT_NUM_INVALID.getValue());
            return userDTO;
        }
        //查看用户是否为组织用户
        else if (userBeans.get(0).getOrganizationId() == null) {
            userDTO.setSuccess(false);
            userDTO.setMessage("非组织用户");
            userDTO.setCode(StatusCode.INFO_NO_ORG_USER.getValue());
            return userDTO;
        }
        else if (StringUtils.isBlank(userBeans.get(0).getOrganizationId().toString())) {
            userDTO.setSuccess(false);
            userDTO.setMessage("非组织用户!");
            userDTO.setCode(StatusCode.INFO_NO_ORG_USER.getValue());
            return userDTO;
        }
        else if (StringUtils.isBlank(express.get("password"))
                || !express.get("password").equals(userBeans.get(0).getPassword())) {
            userDTO.setSuccess(false);
            userDTO.setMessage("用户名与密码不一致!");
            userDTO.setCode(StatusCode.INFO_USER_PWD.getValue());
            return userDTO;
        }
        UserBean userBean = userBeans.get(0);
        userBean.setLoTime(Tools.getyyyyMMddHHmm());
        userMapper.updateByKey(userBean);
        userDTO.setSuccess(true);
        userDTO.setDataRow(userBean);
        return userDTO;
    }

    @Override
    public UserDTO comLogin(UserQuery query) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        return null;
    }

    @Override
    public UserDTO ifUserExist(UserQuery query) {
        return null;
    }

    @Override
    public UserDTO delete(UserQuery query) {
        return null;
    }

    @Override
    public UserDTO activate(UserQuery query) {
        return null;
    }

    @Override
    public UserDTO selectCountByOrgId(UserQuery query) {
        UserDTO result = new UserDTO();
        Map<String, String> express = query.getExpress();
        UserBean userBean = query.getDataRow();
        if (!express.containsKey("organizationId")) {
            express.put("organizationId", userBean != null ? userBean.getOrganizationId().toString() : "");
        }
        Long aLong = userMapper.selectCount(express);
        if(aLong <=0){
            result.setSuccess(false);
            result.setMessage("没有找到");
            result.setCode(StatusCode.INFO_NO_UPDATE.getValue());
        }
        result.setSuccess(true);
        result.setCount(aLong);
        return result;
    }
}
