package com.ikats.ams.service.ipml;

import com.ikats.ams.dao.AmsUserRoleMapper;
import com.ikats.ams.entity.AmsUserRoleBean;

import com.ikats.ams.entity.dto.AmsUserRoleDTO;
import com.ikats.ams.entity.enumerate.StatusCode;
import com.ikats.ams.entity.query.AmsUserRoleQuery;
import com.ikats.ams.service.IAmsUserRoleService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class AmsUserRoleService implements IAmsUserRoleService {

    @Autowired
    private AmsUserRoleMapper amsUserRoleMapper;

    @Override
    public AmsUserRoleDTO add(AmsUserRoleQuery query) {
        return null;
    }

    @Override
    public AmsUserRoleDTO insertList(AmsUserRoleQuery query) {
        return null;
    }

    @Override
    public AmsUserRoleDTO deleteByKey(AmsUserRoleQuery query) {
        return null;
    }

    @Override
    public AmsUserRoleDTO removeRole(AmsUserRoleQuery query) {
        return null;
    }

    @Override
    public AmsUserRoleDTO queryRoleListByUserId(AmsUserRoleQuery query) {
        return null;
    }

    @Override
    public AmsUserRoleDTO updateByUid(AmsUserRoleQuery query) {
        return null;
    }

    @Override
    public AmsUserRoleDTO addUserRole(AmsUserRoleQuery query) {
        AmsUserRoleDTO result = new AmsUserRoleDTO();
        AmsUserRoleBean dataRow = query.getDataRow();
        Map<String, String> express = query.getExpress();
        Long userId = dataRow.getUserId();
        express.put("userId", userId.toString());
        List<AmsUserRoleBean> beans = amsUserRoleMapper.selectByQuery(express);
        if (beans.size()>0){
            amsUserRoleMapper.deleteByUid(userId);
        }
        int count = amsUserRoleMapper.insert(dataRow);
        if (count<=0){
            result.setSuccess(false);
            result.setMessage("没有新增");
            result.setCode(StatusCode.INFO_NO_INSERT.getValue());
            return result;
        }
        result.setSuccess(true);
        return result;
    }

    @Override
    public AmsUserRoleDTO deleteByUid(AmsUserRoleQuery query) {
        return null;
    }
}
