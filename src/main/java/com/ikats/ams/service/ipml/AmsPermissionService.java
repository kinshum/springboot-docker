package com.ikats.ams.service.ipml;


import com.ikats.ams.dao.AmsPermissionMapper;
import com.ikats.ams.entity.AmsPermissionBean;
import com.ikats.ams.entity.PermissionBean;
import com.ikats.ams.entity.dto.AmsPermissionDTO;
import com.ikats.ams.entity.dto.PermissionDTO;
import com.ikats.ams.entity.enumerate.StatusCode;
import com.ikats.ams.entity.query.AmsPermissionQuery;
import com.ikats.ams.service.IAmsPermissionService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.springframework.util.CollectionUtils;

import java.util.List;
import java.util.Map;


@Service
public class AmsPermissionService implements IAmsPermissionService {


    @Autowired
    private AmsPermissionMapper amsPermissionMapper;

    @Override
    public AmsPermissionDTO insert(AmsPermissionQuery query) {
        return null;
    }

    @Override
    public AmsPermissionDTO insertList(AmsPermissionQuery query) {
        return null;
    }

    @Override
    public AmsPermissionDTO deleteByKey(AmsPermissionQuery query) {
        return null;
    }

    @Override
    public AmsPermissionDTO updateByKey(AmsPermissionQuery query) {
        return null;
    }

    @Override
    public AmsPermissionDTO selectByKey(AmsPermissionQuery query) {
        return null;
    }

    @Override
    public AmsPermissionDTO selectByQuery(AmsPermissionQuery query) {
        AmsPermissionDTO result = new AmsPermissionDTO();
        Map<String, String> express = query.getExpress();
        List<AmsPermissionBean> amsPermissionBeans = amsPermissionMapper.selectByQuery(express);
        if (CollectionUtils.isEmpty(amsPermissionBeans)){
            result.setSuccess(false);
            result.setMessage("获取错误");
            result.setCode(StatusCode.ERROR_QUERY.getValue());
        }
        result.setSuccess(true);
        result.setDataTable(amsPermissionBeans);
        return result;
    }

    @Override
    public AmsPermissionDTO findPermissionListByUserId(AmsPermissionQuery query) {
        AmsPermissionDTO result = new AmsPermissionDTO();
        List<AmsPermissionBean> permissionListByUserId = amsPermissionMapper.findPermissionListByUserId(query.getUserId());
        if (CollectionUtils.isEmpty(permissionListByUserId)){
            result.setSuccess(false);
            result.setMessage("获取错误");
            result.setCode(StatusCode.ERROR_QUERY.getValue());
        }
        result.setDataTable(permissionListByUserId);
        result.setSuccess(true);
        return result;
    }

    @Override
    public AmsPermissionDTO getPermissionMenu(AmsPermissionQuery query) {
        return null;
    }

    @Override
    public AmsPermissionDTO getFunctionPermission(AmsPermissionQuery query) {
        AmsPermissionDTO result = new AmsPermissionDTO();
        List<AmsPermissionBean> beanList = amsPermissionMapper.getFunctionPermission(query.getUserId());
        if(beanList.size()<=0) {
            result.setSuccess(false);
            result.setMessage("获取错误");
            result.setCode(StatusCode.ERROR_QUERY.getValue());
        }
        result.setDataTable(beanList);
        result.setSuccess(true);
        return result;
    }

    @Override
    public AmsPermissionDTO findPermissionListByRoleId(AmsPermissionQuery query) {
        AmsPermissionDTO result = new AmsPermissionDTO();
        Map<String, String> express = query.getExpress();
        Long roleId = Long.parseLong(express.get("roleId").toString());
        List<AmsPermissionBean> permissionListByRoleId = amsPermissionMapper.findPermissionListByRoleId(roleId);
        if (permissionListByRoleId.size() <= 0){
            result.setSuccess(false);
            result.setMessage("没有找到");
            result.setCode(StatusCode.INFO_NO_QUERY.getValue());
            return result;
        }
        result.setSuccess(true);
        result.setDataTable(permissionListByRoleId);
        return result;
    }
}
