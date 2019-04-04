package com.ikats.ams.service.ipml;

import com.ikats.ams.dao.SalesMapper;
import com.ikats.ams.entity.SalesBean;
import com.ikats.ams.entity.dto.SalesDTO;
import com.ikats.ams.entity.enumerate.StatusCode;
import com.ikats.ams.entity.query.SalesQuery;
import com.ikats.ams.service.ISalesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import java.util.List;

/**
 * Mapper
 * <p>
 * Sales数据操作接口
 */

@Service
public class SalesService implements ISalesService {

    @Autowired
    private SalesMapper salesMapper;


    @Override
    public SalesDTO selectAllByQuery(SalesQuery query) {
        SalesDTO result = new SalesDTO();
        List<SalesBean> salesBeans = salesMapper.selectAllByQuery(query.getExpress());
        if (CollectionUtils.isEmpty(salesBeans)) {
            result.setSuccess(false);
            result.setMessage("获取错误");
            result.setCode(StatusCode.ERROR_QUERY.getValue());
        }
        result.setDataTable(salesBeans);
        result.setSuccess(true);
        return result;
    }

    @Override
    public SalesDTO selectByKey(SalesQuery query) {
        SalesDTO result = new SalesDTO();
        SalesBean bean = salesMapper.selectByKey(query.getId());
        if(bean==null) {
            result.setSuccess(false);
            result.setMessage("没有找到");
            result.setCode(StatusCode.INFO_NO_QUERY.getValue());
            return result;
        }
        result.setSuccess(true);
        result.setDataRow(bean);
        return result;
    }
}
