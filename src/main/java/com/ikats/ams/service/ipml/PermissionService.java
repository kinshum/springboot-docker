package com.ikats.ams.service.ipml;

import com.ikats.ams.dao.PermissionMapper;
import com.ikats.ams.entity.PermissionBean;
import com.ikats.ams.entity.dto.PermissionDTO;
import com.ikats.ams.entity.enumerate.StatusCode;
import com.ikats.ams.entity.query.PermissionQuery;
import com.ikats.ams.service.IPermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class PermissionService implements IPermissionService {

    @Autowired
    private PermissionMapper permissionMapper;

    @Override
    public PermissionDTO insert(PermissionQuery query) {
        return null;
    }

    @Override
    public PermissionDTO insertList(PermissionQuery query) {
        return null;
    }

    @Override
    public PermissionDTO deleteByKey(PermissionQuery query) {
        return null;
    }

    @Override
    public PermissionDTO updateByKey(PermissionQuery query) {
        return null;
    }

    @Override
    public PermissionDTO selectByKey(PermissionQuery query) {
        return null;
    }

    @Override
    public PermissionDTO selectByQuery(PermissionQuery query) {
        return null;
    }


    @Override
    public PermissionDTO findPermissionListByUserId(PermissionQuery query) {
        PermissionDTO result = new PermissionDTO();

        List<PermissionBean> beanList = permissionMapper.findPermissionListByUserId(query.getUserId());
        if(beanList.size()<=0){
            result.setSuccess(false);
            result.setMessage("没有找到");
            result.setCode(StatusCode.INFO_NO_QUERY.getValue());
            return result;
        }
        result.setSuccess(true);
        result.setDataTable(beanList);
        return result;
    }

    @Override
    public PermissionDTO getPermissionMenu(PermissionQuery query) {
        return null;
    }

    @Override
    public PermissionDTO getFunctionPermission(PermissionQuery query) {
        return null;
    }

    @Override
    public PermissionDTO findPermissionListByRoleId(PermissionQuery query) {
        return null;
    }
}
