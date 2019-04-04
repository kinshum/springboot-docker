package com.ikats.ams.service.ipml;

import com.ikats.ams.dao.BillMapper;
import com.ikats.ams.entity.BillBean;
import com.ikats.ams.entity.UserBean;
import com.ikats.ams.entity.dto.BillDTO;
import com.ikats.ams.entity.enumerate.StatusCode;
import com.ikats.ams.entity.query.BillQuery;
import com.ikats.ams.service.IBillService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.Collection;
import java.util.List;
import java.util.Map;


@Service
public class BillService implements IBillService {

    @Autowired
    private BillMapper billMapper;

    @Override
    public BillDTO insert(BillQuery query) {
        return null;
    }

    @Override
    public BillDTO deleteByKey(BillQuery query) {
        return null;
    }

    @Override
    public BillDTO update(BillQuery query) {
        return null;
    }

    @Override
    public BillDTO selectByKey(BillQuery query) {
        return null;
    }

    @Override
    public BillDTO selectCount(BillQuery query) {
        return null;
    }

    @Override
    public BillDTO selectCountByOrgId(BillQuery query) {
        BillDTO result=new BillDTO();
        Map<String, String> express = query.getExpress();
        UserBean userBean = query.getUserBean();
        express.put("orgId",userBean.getOrganizationId().toString());
        Long aLong = billMapper.selectCount(express);
        if(aLong <=0) {
            result.setSuccess(false);
            result.setMessage("获取错误");
            result.setCode(StatusCode.ERROR_QUERY.getValue());
        }
        result.setSuccess(true);
        result.setCount(aLong);
        return result;
    }

    @Override
    public BillDTO pageByQuery(BillQuery query) {
        BillDTO result=new BillDTO();
        Map<String, String> express = query.getExpress();
        UserBean userBean = query.getUserBean();
        if (express.containsKey("confirmAfter")){
            express.remove("status");
        }
        int pageNum = query.getPageSize() * (query.getPageNum() - 1);
        express.put("orgId",userBean.getOrganizationId().toString());
        List<BillBean> billBeans = billMapper.pageByQuery(pageNum, query.getPageSize(), express);
        if (CollectionUtils.isEmpty(billBeans)) {
            result.setSuccess(false);
            result.setMessage("没有找到");
            result.setCode(StatusCode.INFO_NO_QUERY.getValue());
            return result;
        }
        result.setSuccess(true);
        result.setDataTable(billBeans);
        return result;
    }

    @Override
    public BillDTO updateStatus(BillQuery query) {
        return null;
    }

    @Override
    public BillDTO invoiced(BillQuery query) {
        return null;
    }

    @Override
    public BillDTO paid(BillQuery query) {
        return null;
    }

    @Override
    public BillDTO modify(BillQuery query) {
        return null;
    }

    @Override
    public BillDTO onlyOne(BillQuery query) {
        return null;
    }
}
