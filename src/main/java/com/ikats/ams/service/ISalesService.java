package com.ikats.ams.service;


import com.ikats.ams.entity.dto.SalesDTO;
import com.ikats.ams.entity.query.SalesQuery;

public interface ISalesService {

    SalesDTO selectAllByQuery(SalesQuery query);

    SalesDTO selectByKey(SalesQuery query);
}
