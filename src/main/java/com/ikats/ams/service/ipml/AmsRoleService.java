package com.ikats.ams.service.ipml;


import com.ikats.ams.dao.AmsRoleMapper;
import com.ikats.ams.entity.AmsRoleBean;
import com.ikats.ams.entity.UserBean;
import com.ikats.ams.entity.dto.AmsRoleDTO;
import com.ikats.ams.entity.enumerate.StatusCode;
import com.ikats.ams.entity.query.AmsRoleQuery;
import com.ikats.ams.service.IAmsRoleService;
import com.ikats.common.util.Tools;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import java.util.List;
import java.util.Map;

@Service
public class AmsRoleService implements IAmsRoleService {

    @Autowired
    private AmsRoleMapper amsRoleMapper;

    @Override
    public AmsRoleDTO add(AmsRoleQuery query) {
        return null;
    }

    @Override
    public AmsRoleDTO batchAdd(AmsRoleQuery query) {
        return null;
    }

    @Override
    public AmsRoleDTO modifyRole(AmsRoleQuery query) {
        return null;
    }

    @Override
    public AmsRoleDTO removeRole(AmsRoleQuery query) {
        return null;
    }

    @Override
    public AmsRoleDTO getRole(AmsRoleQuery query) {
        AmsRoleDTO result = new AmsRoleDTO();
        AmsRoleBean bean = amsRoleMapper.selectByKey(query.getId());
        if(bean==null){
            result.setSuccess(false);
            result.setMessage("没有找到");
            result.setCode(StatusCode.INFO_NO_QUERY.getValue());
            return result;
        }
        result.setDataRow(bean);
        result.setSuccess(true);
        return result;
    }

    @Override
    public AmsRoleDTO selectCountByOrgId(AmsRoleQuery query) {
        AmsRoleDTO result = new AmsRoleDTO();
        Map<String, String> express = query.getExpress();
        UserBean userBean = query.getUserBean();
        express.put("organizationId", userBean.getOrganizationId().toString());
        Long aLong = amsRoleMapper.selectCount(express);

        if (aLong <= 0) {
            result.setSuccess(false);
            result.setMessage("获取错误");
            result.setCode(StatusCode.ERROR_QUERY.getValue());

        }
        result.setSuccess(true);
        result.setCount(aLong);
        return result;
    }


    @Override
    public AmsRoleDTO getMyOrgRole(AmsRoleQuery query) {
        AmsRoleDTO result = new AmsRoleDTO();
        UserBean userBean = query.getUserBean();
        Map<String, String> express = query.getExpress();
        express.put("organizationId", userBean.getOrganizationId().toString());
        List<AmsRoleBean> amsRoleBeans = amsRoleMapper.selectAllByOrg(express);
        if (CollectionUtils.isEmpty(amsRoleBeans)) {
            result.setSuccess(false);
            result.setMessage("获取错误");
            result.setCode(StatusCode.ERROR_QUERY.getValue());
        }
        result.setSuccess(true);
        result.setDataTable(amsRoleBeans);
        return result;
    }


    @Override
    public AmsRoleDTO pageQueryRole(AmsRoleQuery query) {
        AmsRoleDTO result = new AmsRoleDTO();
        Map<String, String> express = query.getExpress();
        UserBean userBean = query.getUserBean();
        int pageNum = query.getPageSize() * (query.getPageNum() - 1);
        express.put("organizationId", userBean.getOrganizationId().toString());
        List<AmsRoleBean> amsRoleBeans = amsRoleMapper.pageByQuery(pageNum, query.getPageSize(), express);
        if (CollectionUtils.isEmpty(amsRoleBeans)) {
            result.setSuccess(false);
            result.setMessage("获取错误");
            result.setCode(StatusCode.ERROR_QUERY.getValue());
        }
        result.setSuccess(true);
        result.setDataTable(amsRoleBeans);
        return result;
    }

    @Override
    public AmsRoleDTO findRoleByUid(AmsRoleQuery query) {
        AmsRoleDTO result = new AmsRoleDTO();
        Long userId = query.getUserId();
        UserBean userBean = query.getUserBean();
        List<AmsRoleBean> roleByUid = amsRoleMapper.findRoleByUid(userId == null ? userBean.getId() : userId);
        if (CollectionUtils.isEmpty(roleByUid)) {
            result.setSuccess(false);
            result.setMessage("没有找到");
            result.setCode(StatusCode.INFO_NO_QUERY.getValue());
            return result;
        }
        result.setSuccess(true);
        result.setDataTable(roleByUid);
        return result;
    }

}
