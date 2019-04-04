package com.ikats.ams.controller;

import com.ikats.ams.entity.dto.SalesDTO;
import com.ikats.ams.entity.query.SalesQuery;
import com.ikats.ams.service.ISalesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("Sales")
public class SalesController extends AbstractController {
    @Autowired
    private ISalesService service;



    @PostMapping("selectByKey")
    public SalesDTO selectByKey(@RequestBody SalesQuery query) {
        return service.selectByKey(query);
    }


    @PostMapping("selectAllByQuery")
    public SalesDTO selectAllByQuery(@RequestBody SalesQuery query) {
        return service.selectAllByQuery(query);
    }


}
