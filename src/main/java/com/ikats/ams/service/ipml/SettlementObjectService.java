package com.ikats.ams.service.ipml;

import com.ikats.ams.dao.SettlementObjectMapper;
import com.ikats.ams.entity.SettlementObjectBean;
import com.ikats.ams.entity.UserBean;

import com.ikats.ams.entity.dto.SettlementObjectDto;
import com.ikats.ams.entity.enumerate.StatusCode;
import com.ikats.ams.entity.query.SettlementObjectQuery;
import com.ikats.ams.service.ISettlementObjectService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.List;
import java.util.Map;


@Service
public class SettlementObjectService implements ISettlementObjectService {

    @Autowired
    private SettlementObjectMapper settlementObjectMapper;

    @Override
    public SettlementObjectDto insert(SettlementObjectQuery query) {
        SettlementObjectDto result = new SettlementObjectDto();
        UserBean user = query.getUserBean();
        SettlementObjectBean record = query.getDataRow();
        record.setAccountId(user.getOrgCode());
        record.setOrgId(user.getOrganizationId());
        record.setOrgCode(user.getOrgCode());
        StringBuffer sb = new StringBuffer();
        sb.append(user.getOrgCode());
        sb.append(System.currentTimeMillis());
        record.setSettlementObjectId(sb.toString());
        int insert = settlementObjectMapper.insert(record);
        if (insert !=1) {
            result.setSuccess(false);
            result.setMessage("添加错误");
            result.setCode(StatusCode.ERROR_INSERT.getValue());
        }
        result.setSuccess(true);
        return result;
    }

    @Override
    public SettlementObjectDto newSettlement(SettlementObjectQuery query) {
        return null;
    }

    @Override
    public SettlementObjectDto delete(SettlementObjectQuery query) {
        return null;
    }

    @Override
    public SettlementObjectDto update(SettlementObjectQuery query) {
        SettlementObjectDto result = new SettlementObjectDto();
        SettlementObjectBean dataRow = query.getDataRow();

        if (settlementObjectMapper.update(dataRow) != 1) {
            result.setSuccess(false);
            result.setMessage("更新错误");
            result.setCode(StatusCode.ERROR_UPDATE.getValue());
        }
        result.setSuccess(true);
        return result;
    }

    @Override
    public SettlementObjectDto selectByKey(SettlementObjectQuery query) {
        SettlementObjectDto result=new SettlementObjectDto();
        SettlementObjectBean settlementObjectBean = settlementObjectMapper.selectByKey(query.getId());
        if (settlementObjectBean == null){
            result.setSuccess(false);
            result.setMessage("获取错误");
            result.setCode(StatusCode.ERROR_QUERY.getValue());
        }
        result.setSuccess(true);
        result.setDataRow(settlementObjectBean);
        return result;
    }

    @Override
    public SettlementObjectDto selectCount(SettlementObjectQuery query) {
        return null;
    }

    @Override
    public SettlementObjectDto selectCountByOrgId(SettlementObjectQuery query) {
        SettlementObjectDto result=new SettlementObjectDto();
        UserBean userBean = query.getUserBean();
        Map<String, String> express = query.getExpress();
        express.put("orgId",userBean.getOrganizationId().toString());
        Long aLong = settlementObjectMapper.selectCount(express);

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
    public SettlementObjectDto pageByQuery(SettlementObjectQuery query) {
        SettlementObjectDto result = new SettlementObjectDto();
        UserBean userBean = query.getUserBean();
        Map<String, String> express = query.getExpress();
        express.put("orgId",userBean.getOrganizationId().toString());
        int pageNum = query.getPageSize() * (query.getPageNum() - 1);
        List<SettlementObjectBean> settlementObjectBeans = settlementObjectMapper.pageByQuery(pageNum,query.getPageSize(),express);
        if (CollectionUtils.isEmpty(settlementObjectBeans)) {
            result.setSuccess(false);
            result.setMessage("没有找到");
            result.setCode(StatusCode.INFO_NO_QUERY.getValue());
            return result;
        }
        result.setSuccess(true);
        result.setDataTable(settlementObjectBeans);
        return result;
    }

    @Override
    public SettlementObjectDto selectByQuery(SettlementObjectQuery query) {
        SettlementObjectDto result=new SettlementObjectDto();
        Map<String, String> express = query.getExpress();
        UserBean user = query.getUserBean();
        express.put("orgId",user.getOrganizationId().toString());
        List<SettlementObjectBean> settlementObjectBeans = settlementObjectMapper.selectByQuery(express);

        if (CollectionUtils.isEmpty(settlementObjectBeans)) {
            result.setSuccess(false);
            result.setMessage("获取错误");
            result.setCode(StatusCode.ERROR_QUERY.getValue());
        }
        result.setSuccess(true);
        result.setDataTable(settlementObjectBeans);
        return result;
    }

    @Override
    public SettlementObjectDto onlyOne(SettlementObjectQuery query) {
        return null;
    }

    @Override
    public SettlementObjectDto onlyOneName(SettlementObjectQuery query) {
        SettlementObjectDto result = new SettlementObjectDto();
        Map<String, String> express = query.getExpress();
        UserBean userBean = query.getUserBean();
        express.put("orgId",userBean.getOrganizationId().toString());
        Long aLong = settlementObjectMapper.selectCount(express);
        if(aLong <=0) {
            result.setSuccess(false);
            result.setMessage("没有找到");
            result.setCode(StatusCode.INFO_NO_QUERY.getValue());
            return result;
        }
        result.setCount(aLong);
        result.setSuccess(true);
        return result;
    }
}
