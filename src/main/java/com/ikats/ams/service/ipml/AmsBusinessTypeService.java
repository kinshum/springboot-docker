package com.ikats.ams.service.ipml;


import com.ikats.ams.dao.AmsBusinessTypeMapper;
import com.ikats.ams.entity.AmsBusinessTypeBean;
import com.ikats.ams.entity.UserBean;
import com.ikats.ams.entity.dto.AmsBusinessTypeDto;
import com.ikats.ams.entity.enumerate.StatusCode;
import com.ikats.ams.entity.query.AmsBusinessTypeQuery;
import com.ikats.ams.service.IAmsBusinessTypeService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import java.util.List;
import java.util.Map;


@Service
public class AmsBusinessTypeService implements IAmsBusinessTypeService {

    @Autowired
    private AmsBusinessTypeMapper amsBusinessTypeMapper;

    @Override
    public AmsBusinessTypeDto insert(AmsBusinessTypeQuery query) {
        AmsBusinessTypeDto result = new AmsBusinessTypeDto();
        AmsBusinessTypeBean dataRow = query.getDataRow();
        UserBean userBean = query.getUserBean();
        dataRow.setOrgId(userBean.getOrganizationId());
        int count = amsBusinessTypeMapper.insert(dataRow);
        if(count<=0) {
            result.setSuccess(false);
            result.setMessage("没有新增");
            result.setCode(StatusCode.INFO_NO_INSERT.getValue());
            return result;
        }
        result.setSuccess(true);
        return result;
    }

    @Override
    public AmsBusinessTypeDto delete(AmsBusinessTypeQuery query) {
        AmsBusinessTypeDto result = new AmsBusinessTypeDto();
        int count = amsBusinessTypeMapper.delete(query.getId());
        if(count<=0) {
            result.setSuccess(false);
            result.setMessage("没有删除");
            result.setCode(StatusCode.INFO_NO_DELETE.getValue());
            return result;
        }
        result.setSuccess(true);
        return result;
    }

    @Override
    public AmsBusinessTypeDto update(AmsBusinessTypeQuery query) {
        AmsBusinessTypeDto result=new AmsBusinessTypeDto();
        AmsBusinessTypeBean dataRow = query.getDataRow();
        int update = amsBusinessTypeMapper.update(dataRow);
        if (update != 1 ) {
            result.setSuccess(false);
            result.setMessage("更新失败");
            result.setCode(StatusCode.ERROR_UPDATE.getValue());
            return result;
        }
        result.setSuccess(true);
        return result;
    }

    @Override
    public AmsBusinessTypeDto selectByKey(AmsBusinessTypeQuery query) {
        AmsBusinessTypeDto result  = new AmsBusinessTypeDto();
        AmsBusinessTypeBean amsBusinessTypeBean = amsBusinessTypeMapper.selectByKey(query.getId());
        if (amsBusinessTypeBean != null) {
            result.setDataRow(amsBusinessTypeBean);
            result.setSuccess(true);
        }
        else {
            result.setSuccess(false);
            return result;
        }
        return result;
    }

    @Override
    public AmsBusinessTypeDto selectCount(AmsBusinessTypeQuery query) {
        return null;
    }

    @Override
    public AmsBusinessTypeDto selectCountByOrgId(AmsBusinessTypeQuery query) {
        AmsBusinessTypeDto result=new AmsBusinessTypeDto();
        Map<String, String> express = query.getExpress();
        UserBean userBean = query.getUserBean();
        express.put("orgId",userBean.getOrganizationId().toString());
        Long aLong = amsBusinessTypeMapper.selectCount(express);
        if(aLong <= 0) {
            result.setSuccess(false);
            result.setMessage("没有找到");
            result.setCode(StatusCode.INFO_NO_QUERY.getValue());
            return result;
        }
        result.setSuccess(true);
        result.setCount(aLong);
        return result;
    }

    @Override
    public AmsBusinessTypeDto pageByQuery(AmsBusinessTypeQuery query) {
        AmsBusinessTypeDto result = new AmsBusinessTypeDto();
        Map<String, String> express = query.getExpress();
        express.put("orgId",query.getUserBean().getOrganizationId().toString());
        int pageNum = query.getPageSize()*(query.getPageNum()-1);
        List<AmsBusinessTypeBean> amsBusinessTypeBeans = amsBusinessTypeMapper.pageByQuery(pageNum, query.getPageSize(), express);
        if (CollectionUtils.isEmpty(amsBusinessTypeBeans)){
            result.setSuccess(false);
            result.setMessage("没有找到");
            result.setCode(StatusCode.INFO_NO_QUERY.getValue());
            return result;
        }
        result.setSuccess(true);
        result.setDataTable(amsBusinessTypeBeans);
        return result;
    }

    @Override
    public AmsBusinessTypeDto selectByQuery(AmsBusinessTypeQuery query) {
        return null;
    }

    @Override
    public AmsBusinessTypeDto onlyOne(AmsBusinessTypeQuery query) {
        return null;
    }
}
