package com.ikats.ams.service.ipml;


import com.ikats.ams.dao.ServiceMapper;
import com.ikats.ams.entity.ServiceBean;
import com.ikats.ams.entity.UserBean;
import com.ikats.ams.entity.dto.ServiceDto;
import com.ikats.ams.entity.enumerate.StatusCode;
import com.ikats.ams.entity.query.ServiceQuery;
import com.ikats.ams.service.IServiceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import java.util.List;
import java.util.Map;

/**
 * @Date: Created in 15:32 2017/8/8
 * @Description:
 */
@Service
@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
public class ServiceService implements IServiceService {

    @Autowired
    private ServiceMapper serviceMapper;


    @Override
    public ServiceDto customsInsert(ServiceQuery query) {
        return null;
    }

    @Override
    public ServiceDto distributionInsert(ServiceQuery query) {
        return null;
    }

    @Override
    public ServiceDto purchaseInsert(ServiceQuery query) {
        return null;
    }

    @Override
    public ServiceDto warehouseInsert(ServiceQuery query) {
        return null;
    }

    @Override
    public ServiceDto channelInsert(ServiceQuery query) {
        return null;
    }

    @Override
    public ServiceDto deleteByKey(ServiceQuery query) {
        return null;
    }

    @Override
    public ServiceDto modifyCustomsService(ServiceQuery query) {
        return null;
    }

    @Override
    public ServiceDto modifyDistributionService(ServiceQuery query) {
        return null;
    }

    @Override
    public ServiceDto modifyPurchaserService(ServiceQuery query) {
        return null;
    }

    @Override
    public ServiceDto modifyWarehouseService(ServiceQuery query) {
        return null;
    }

    @Override
    public ServiceDto modifyDistributionChannelService(ServiceQuery query) {
        return null;
    }

    @Override
    public ServiceDto selectByKey(ServiceQuery query) {
        return null;
    }

    @Override
    public ServiceDto selectService(ServiceQuery query) {
        return null;
    }

    @Override
    public ServiceDto pageByQuery(ServiceQuery query) {
        ServiceDto result = new ServiceDto();
        Map<String, String> express = query.getExpress();
        if (!express.containsKey("orgId")) {
            UserBean userBean = query.getUserBean();
            if (userBean != null && userBean.getOrganizationId() != null) {
                express.put("orgId",userBean.getOrganizationId().toString());
            }
        }
        List<ServiceBean> serviceBeans = serviceMapper.pageByQuery(query.getPageSize()*(query.getPageNum()-1), query.getPageSize(), express);
        if (CollectionUtils.isEmpty(serviceBeans)) {
            result.setSuccess(false);
            result.setMessage("没有找到");
            result.setCode(StatusCode.INFO_NO_QUERY.getValue());
            return result;
        }
        result.setSuccess(true);
        result.setDataTable(serviceBeans);
        return result;
    }

    @Override
    public ServiceDto selectByQuery(ServiceQuery query) {
        return null;
    }

    @Override
    public ServiceDto selectByKeyAll(ServiceQuery query) {
        return null;
    }

    @Override
    public ServiceDto selectCountByOrgId(ServiceQuery query) {
        return null;
    }
}
