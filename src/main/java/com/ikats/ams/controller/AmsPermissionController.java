package com.ikats.ams.controller;


import com.ikats.ams.entity.AmsPermissionBean;
import com.ikats.ams.entity.PermissionBean;
import com.ikats.ams.entity.dto.AmsPermissionDTO;
import com.ikats.ams.entity.dto.PermissionDTO;
import com.ikats.ams.entity.query.AmsPermissionQuery;
import com.ikats.ams.service.IAmsPermissionService;
import com.ikats.common.annotation.LogonAuthority;
import com.ikats.common.config.Constants;
import com.ikats.common.redis.AutoTokenUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * @Author: jz
 * @Date: Created in 14:17 2017/9/26
 * @Description: 许可/权限
 */
@RestController
@RequestMapping("AmsPermission")
public class AmsPermissionController extends AbstractController {

    @Autowired
    private IAmsPermissionService service;

    /**
     * Web入口:添加许可/权限
     *
     * @param query
     * @return AmsPermissionDTO
     */
    @LogonAuthority
    @RequestMapping(value = "insert", method = {RequestMethod.POST})
    public AmsPermissionDTO insert(@RequestBody AmsPermissionQuery query) {
        return service.insert(query);
    }

    /**
     * Web入口:多行添加许可/权限
     *
     * @param query
     * @return AmsPermissionDTO
     */
    @LogonAuthority
    @RequestMapping(value = "insertList", method = {RequestMethod.POST})
    public AmsPermissionDTO insertList(@RequestBody AmsPermissionQuery query) {
        return service.insertList(query);
    }

    /**
     * Web入口:删除许可/权限
     *
     * @param query
     * @return AmsPermissionDTO
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "deleteByKey", method = {RequestMethod.POST})
    public AmsPermissionDTO deleteByKey(@RequestBody AmsPermissionQuery query) {
        return service.deleteByKey(query);
    }

    /**
     * Web入口:更新许可/权限
     *
     * @param query
     * @return AmsPermissionDTO
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "updateByKey", method = {RequestMethod.POST})
    public AmsPermissionDTO updateByKey(@RequestBody AmsPermissionQuery query) {
        return service.updateByKey(query);
    }

    /**
     * Web入口:获取单行许可/权限
     *
     * @param query
     * @return AmsPermissionDTO
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "selectByKey", method = {RequestMethod.POST})
    public AmsPermissionDTO selectByKey(@RequestBody AmsPermissionQuery query) {
        return service.selectByKey(query);
    }

    /**
     * Web入口:获取所有许可/权限
     *
     * @param query
     * @return AmsPermissionDTO
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "selectByQuery", method = {RequestMethod.POST})
    public AmsPermissionDTO selectByQuery(@RequestBody AmsPermissionQuery query) {
        return service.selectByQuery(query);
    }

    /**
     * 获取所有权限,层级结构返回
     * @param query
     * @return
     */
    @LogonAuthority
    @ResponseBody
    @PostMapping("treeData")
    public AmsPermissionDTO treeData(@RequestBody AmsPermissionQuery query) {
        AmsPermissionDTO dto = service.selectByQuery(query);
        List<AmsPermissionBean> dataTable = dto.getDataTable();
        List<AmsPermissionBean> parentNode = new ArrayList<>();
        List<AmsPermissionBean> childNodes = new ArrayList<>();
        List<Object> treeDate = new ArrayList<>();
        for (AmsPermissionBean bean:dataTable) {
            if (bean.getPid()==0){
                parentNode.add(bean);
            }else{
                childNodes.add(bean);
            }
        }
        for (int i=0;i<parentNode.size();i++) {
            HashMap<Object, Object> map = new HashMap<>();
            map.put("Name",parentNode.get(i).getName());
            map.put("Code",parentNode.get(i).getCode());
            map.put("Id",parentNode.get(i).getId());
            treeDate.add(i,map);
        }
        for (int i=0;i<treeDate.size();i++){
            HashMap map = (HashMap) treeDate.get(i);
            ArrayList<Object> arrayList = new ArrayList<>();
            int index=0;
            for (int j=0;j<childNodes.size();j++){
                Long pid = childNodes.get(j).getPid();
                Long id = (Long)map.get("Id");
                if (id.equals(pid)){
                    HashMap<Object, Object> children = new HashMap<>();
                    children.put("Name",childNodes.get(j).getName());
                    children.put("Code",childNodes.get(j).getCode());
                    children.put("Id",childNodes.get(j).getId());
                    arrayList.add(index,children);
                    index+=1;
                }
            }
            map.put("children",arrayList);
        }
        dto.getDataTable().clear();
        dto.setTreeDate(treeDate);
        return dto;
    }

    /**
     * Web入口:根据用户id获取所有许可/权限
     *
     * @param query
     * @return AmsPermissionDTO
     */
    @LogonAuthority
    @PostMapping("findPermissionListByUserId")
    public AmsPermissionDTO findPermissionListByUserId(@RequestBody AmsPermissionQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        if (AutoTokenUtil.isEmpty(token)) {
            String temp[] = token.split(",");
            Long it = new Long(temp[0]);
            query.setUserId(it);
        }
        AmsPermissionDTO dto = service.findPermissionListByUserId(query);
        return dto;
    }

    /**
     * @Description: 拼接ams权限
     * @param query
     * @param request
     * @return
     */
    @PostMapping("splicingAMSPower")
    public AmsPermissionDTO splicingPer(@RequestBody AmsPermissionQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        String checkPermission = this.checkPermission(token);
        StringBuilder sb = new StringBuilder().append(checkPermission);
        AmsPermissionDTO dto = service.findPermissionListByUserId(query);
        if (dto.getSuccess()){
            for (AmsPermissionBean bean: dto.getDataTable()) {
                sb.append("#");
                sb.append(bean.getCode());
            }
        }
        this.setPerToken("A" + query.getUserId(), sb.toString());
        return dto;
    }


    /**
      * @Author: jz
      * @Date: Created in 2017/11/1 16:15
      * @Description: 获取权限菜单列表
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "getPermissionMenu", method = {RequestMethod.POST})
    public AmsPermissionDTO getPermissionMenu(@RequestBody AmsPermissionQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        if (AutoTokenUtil.isEmpty(token)) {
            String temp[] = token.split(",");
            Long it = new Long(temp[0]);
            query.setUserId(it);
        }
        AmsPermissionDTO dto = service.getPermissionMenu(query);
//        ArrayList<Object> objects = new ArrayList<>();
//        if (dto.getDataTable().size()>0){
//            for (AmsPermissionBean bean:dto.getDataTable()) {
//                objects.add(bean.getCode());
//            }
//            dto.getDataTable().clear();
//            dto.setTreeDate(objects);
//        }
        return  dto;
    }

    /**
     * @Description: 获取某个用户的功能权限
     * @param query
     * @param request
     * @return
     */
    @LogonAuthority
    @PostMapping("getFunctionPermission")
    public AmsPermissionDTO getFunctionPermission(@RequestBody AmsPermissionQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        if (AutoTokenUtil.isEmpty(token)) {
            String temp[] = token.split(",");
            Long it = new Long(temp[0]);
            query.setUserId(it);
        }
        AmsPermissionDTO dto = service.getFunctionPermission(query);
        ArrayList<Object> objects = new ArrayList<>();
        if (dto.getDataTable()!=null && dto.getDataTable().size()>0){
            for (AmsPermissionBean bean:dto.getDataTable()) {
                objects.add(bean.getCode());
            }
            dto.getDataTable().clear();
            dto.setTreeDate(objects);
        }
        return dto;
    }

    /**
      * @Author: jz
      * @Date: Created in 2017/11/2 13:56
      * @Description: 根据角色id,获取这个角色所有的权限
     */
    @LogonAuthority
    @ResponseBody
    @RequestMapping(value = "findPermissionListByRoleId", method = {RequestMethod.POST})
    public AmsPermissionDTO findPermissionListByRoleId(@RequestBody AmsPermissionQuery query) {
        return service.findPermissionListByRoleId(query);
    }

}
