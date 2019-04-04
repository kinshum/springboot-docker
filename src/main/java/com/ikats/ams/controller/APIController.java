package com.ikats.ams.controller;


import com.ikats.ams.entity.dto.APIDto;
import com.ikats.ams.entity.dto.AccountDTO;
import com.ikats.ams.entity.dto.AccountitemDto;
import com.ikats.ams.entity.dto.SettlementObjectDto;
import com.ikats.ams.entity.query.APIQuery;
import com.ikats.ams.entity.query.AccountQuery;
import com.ikats.ams.entity.query.AccountitemQuery;
import com.ikats.ams.entity.query.SettlementObjectQuery;
import com.ikats.ams.service.IAccountService;
import com.ikats.ams.service.IAccountitemService;
import com.ikats.ams.service.ISettlementObjectService;
import com.ikats.common.config.Constants;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;


/**
 *
 */
@RestController
@RequestMapping("clearing")
public class APIController extends AbstractController{

    @Autowired
    private IAccountService iAccountService;

    @Autowired
    private ISettlementObjectService iSettlementObjectService;

    @Autowired
    private IAccountitemService iAccountitemService;


    @PostMapping(value = "create")
    public APIDto insert(@RequestBody APIQuery query, HttpServletRequest request) {
        APIDto dto = new APIDto();
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        if (query.getAccount()!=null){
            AccountQuery accountQuery = new AccountQuery();
            accountQuery.setDataRow(query.getAccount());
            accountQuery.setUserBean(query.getUserBean());
            AccountDTO accountDTO = iAccountService.insert(accountQuery);
            dto.setSuccess(accountDTO.getSuccess());
        }
        if (query.getSettlementObject()!=null){
            SettlementObjectQuery settlementObjectQuery = new SettlementObjectQuery();
            settlementObjectQuery.setDataRow(query.getSettlementObject());
            settlementObjectQuery.setUserBean(query.getUserBean());
            SettlementObjectDto settlementObjectDto = iSettlementObjectService.insert(settlementObjectQuery);
            dto.setSuccess(settlementObjectDto.getSuccess());
        }
        if (query.getAccountitem()!=null){
            AccountitemQuery accountitemQuery = new AccountitemQuery();
            accountitemQuery.setDataRow(query.getAccountitem());
            accountitemQuery.setAttachment(query.getAccountitem().getAttachmentBean());
            accountitemQuery.setUserBean(query.getUserBean());
            //AccountitemDto accountitemDto = iAccountitemService.insert(accountitemQuery);
            //dto.setSuccess(accountitemDto.getSuccess());
        }
        return dto;
    }
}
