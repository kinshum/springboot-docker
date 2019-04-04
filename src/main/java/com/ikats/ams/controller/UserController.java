package com.ikats.ams.controller;


import com.ikats.ams.entity.PermissionBean;
import com.ikats.ams.entity.dto.PermissionDTO;
import com.ikats.ams.entity.dto.UserDTO;
import com.ikats.ams.entity.query.PermissionQuery;
import com.ikats.ams.entity.query.UserQuery;
import com.ikats.ams.service.IPermissionService;
import com.ikats.ams.service.IUserService;
import com.ikats.common.annotation.Accesspermission;
import com.ikats.common.annotation.LogonAuthority;
import com.ikats.common.config.Constants;
import com.ikats.common.redis.AutoTokenUtil;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;


@RestController
@RequestMapping("User")
public class UserController extends AbstractController {

    @Autowired
    private IUserService iUserService;

    @Autowired
    private IPermissionService iPermissionService;


    /**
     * 按条件查询所有的用户 ; 参数 express:{...}
     * @param query
     * @return
     */
    @LogonAuthority
    @PostMapping("selectAllByQuery")
    public UserDTO selectAllByQuery(@RequestBody UserQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setDataRow(getUserBean(token));
        return iUserService.selectAllByQuery(query);
    }


    /**
     * 根据id修改用户信息 ; dataRow : {...}
     *  (用户管理)
     * @param query
     * @param request
     * @return
     */
    @Accesspermission
    @LogonAuthority
    @RequestMapping(value = "modifyOrgUser", method = {RequestMethod.POST})
    public UserDTO modifyOrgUser(@RequestBody UserQuery query, HttpServletRequest request) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        String token = request.getHeader(Constants.AUTHORIZATION);
        if (AutoTokenUtil.isEmpty(token)) {
            String temp[] = token.split(",");
            Long it = new Long(temp[0]);
            query.setUserId(it);
        }
        return iUserService.updateByKey(query);
    }

    /**
      * @Author: jz
      * @Date: Created in 2017/11/1 13:37
      * @Description: 修改客户下的用户
     */
    @Accesspermission
    @LogonAuthority
    @RequestMapping(value = "modifyCustomerUser", method = {RequestMethod.POST})
    public UserDTO modifyCustomerUser(@RequestBody UserQuery query, HttpServletRequest request) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        String token = request.getHeader(Constants.AUTHORIZATION);
        if (AutoTokenUtil.isEmpty(token)) {
            String temp[] = token.split(",");
            Long it = new Long(temp[0]);
            query.setUserId(it);
        }
        return iUserService.updateByKey(query);
    }

    /**
     * @Date: Created in 2017/8/3 15:29
     * @Description: 修改密码接口 ; {oldpwd:'',newpwd:'',confirm:'',dataRow{id:''}}
     */
    @LogonAuthority
    @PostMapping(value = "updatePassword")
    public UserDTO updatePassword(@RequestBody HashMap<String,String> params, HttpServletRequest request) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        String token = request.getHeader(Constants.AUTHORIZATION);
        UserQuery userQuery = new UserQuery();
        if (AutoTokenUtil.isEmpty(token)) {
            String temp[] = token.split(",");
            Long it = new Long(temp[0]);
            userQuery.setUserId(it);
        }
        userQuery.setExpress(params);
        return iUserService.updatePassword(userQuery);
    }

    /**
     * 用户登录入口 ; 参数 express : {username : '' , password :''}
     *
     * @param query
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "conLogin", method = {RequestMethod.POST})
    public UserDTO iUserService(@RequestBody UserQuery query, HttpServletRequest request) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        UserDTO dto = iUserService.conLogin(query);
        if (dto.getSuccess()) {
            String token = this.setToken(dto.getDataRow().getId().toString());
            //保存 --------------
            setUserBean(dto.getDataRow());
            dto.setToken(dto.getDataRow().getId() + "," + token);
        }
        return dto;
    }

    /**
     * 组织用户登录 ;参数 express:{userName:'',password:''}
     *
     * @param query
     * @param request
     * @return
     */
    @PostMapping("orgLogin")
    public UserDTO orgLogin(@RequestBody UserQuery query, HttpServletRequest request) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        UserDTO dto = iUserService.orgLogin(query);
        if (dto.getSuccess()) {
            String token = setToken(dto.getDataRow().getId().toString());
            //保存 --------------
            setUserBean(dto.getDataRow());
            dto.setToken(dto.getDataRow().getId() + "," + token);
            //查询登陆用户的所有权限
            PermissionQuery permissionQuery = new PermissionQuery();
            permissionQuery.setUserId(dto.getDataRow().getId());
            PermissionDTO permissionDTO = iPermissionService.findPermissionListByUserId(permissionQuery);
            request.getSession().setAttribute(Constants.PERMISSION, permissionDTO.getDataTable());
            if (permissionDTO.getSuccess()) {
                StringBuffer sb = new StringBuffer();
                for (PermissionBean bean : permissionDTO.getDataTable()) {
                    sb.append("#");
                    sb.append(bean.getCode());
                }
                this.setPerToken("A" + dto.getDataRow().getId().toString(), sb.toString());
            }
        }
        return dto;
    }

    /**
     * 注册用户(个人用户注册接口) , 参数 dataRow :{...}
     *
     * @param query
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "addNewUser", method = {RequestMethod.POST})
    public UserDTO addNewUser(@RequestBody UserQuery query, HttpServletRequest request) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        String token = request.getHeader(Constants.AUTHORIZATION);
        if (AutoTokenUtil.isEmpty(token)) {
            String temp[] = token.split(",");
            Long it = new Long(temp[0]);
            query.setUserId(it);
        }
        UserDTO dto = iUserService.addNewUser(query);
        return dto;
    }

    /**
      * @Author: jz
      * @Date: Created in 2017/11/1 11:25
      * @Description: 组织下添加用户接口
     */
    @Accesspermission
    @ResponseBody
    @RequestMapping(value = "addOrgUser", method = {RequestMethod.POST})
    public UserDTO addOrgUser(@RequestBody UserQuery query, HttpServletRequest request) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        String token = request.getHeader(Constants.AUTHORIZATION);
        if (AutoTokenUtil.isEmpty(token)) {
            String temp[] = token.split(",");
            Long it = new Long(temp[0]);
            query.setUserId(it);
        }
        UserDTO dto = iUserService.addNewUser(query);
        return dto;
    }

    /**
      * @Author: jz
      * @Date: Created in 2017/11/1 13:33
      * @Description: 客户下添加用户
     */
    @ResponseBody
    @RequestMapping(value = "addCustomerUser", method = {RequestMethod.POST})
    public UserDTO addCustomerUser(@RequestBody UserQuery query, HttpServletRequest request) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        String token = request.getHeader(Constants.AUTHORIZATION);
        if (AutoTokenUtil.isEmpty(token)) {
            String temp[] = token.split(",");
            Long it = new Long(temp[0]);
            query.setUserId(it);
        }
        UserDTO dto = iUserService.addCustomerUser(query);
        return dto;
    }

    /**
     * 得到用户的基础信息 , express:{id:''}  , 不传即为获得当前用户的信息
     *
     * @param query
     * @param request
     * @return
     */
    @LogonAuthority
    @PostMapping("user")
    public UserDTO getUser(@RequestBody UserQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        if (AutoTokenUtil.isEmpty(token)) {
            String temp[] = token.split(",");
            Long it = new Long(temp[0]);
            query.setUserId(it);
        }
        return iUserService.selectByKey(query);
    }


    /**
     * 退出登录的方法 ; 无需传参
     *
     * @param request
     * @return
     */

    @PostMapping("layOut")
    public UserDTO layOut(HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        if (AutoTokenUtil.isEmpty(token)) {
            removeToken(token);
        }
        UserDTO dto = new UserDTO();
        dto.setSuccess(true);
        return dto;
    }

    /**
     * 判断邮箱或者电话是否存在
     * @param query
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "ifExist", method = {RequestMethod.POST})
    public UserDTO ifUserExist(@RequestBody UserQuery query) {
        return iUserService.ifUserExist(query);
    }


    /**
     * 用户登录入口 ; 参数 express : {username : '' , password :''}
     *
     * @param query
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "comLogin", method = {RequestMethod.POST})
    public UserDTO commonLogin(@RequestBody UserQuery query) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        UserDTO dto = iUserService.comLogin(query);
        if (dto.getSuccess()) {
            String token = setToken(dto.getDataRow().getId().toString());
            //保存 --------------
            setUserBean(dto.getDataRow());
            dto.setToken(dto.getDataRow().getId() + "," + token);
        }
        return dto;
    }

    /**
     * Web入口:删除用户表(用户管理)
     *
     * @param query
     * @return CmsUserDto
     */
    @Accesspermission
    @ResponseBody
    @RequestMapping(value = "deleteOrgUser", method = {RequestMethod.POST})
    public UserDTO deleteOrgUser(@RequestBody UserQuery query) {
        return iUserService.delete(query);
    }

    /**
      * @Author: jz
      * @Date: Created in 2017/11/1 13:35
      * @Description: 删除客户下的用户
     */
    @Accesspermission
    @RequestMapping(value = "deleteCustomerUser", method = {RequestMethod.POST})
    public UserDTO deleteCustomerUser(@RequestBody UserQuery query) {
        return iUserService.delete(query);
    }

    /**
     * Web入口:用户激活
     *
     * @param query
     * @return CmsUserDto
     */
    @LogonAuthority
    @RequestMapping(value = "activate", method = {RequestMethod.POST})
    public UserDTO activate(@RequestBody UserQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        if (AutoTokenUtil.isEmpty(token)) {
            String temp[] = token.split(",");
            Long it = new Long(temp[0]);
            query.setUserId(it);
        }
        return iUserService.activate(query);
    }

    /**
     *  获取数据数量
     * @param query
     * @return UserDTO
     */
    @LogonAuthority
    @PostMapping("selectCountByOrgId")
    public UserDTO selectCountByOrgId(@RequestBody UserQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setDataRow(getUserBean(token));
        return iUserService.selectCountByOrgId(query);
    }

}
