package com.ikats.ams.controller;

import com.ikats.ams.entity.dto.ServiceDto;
import com.ikats.ams.entity.query.ServiceQuery;
import com.ikats.ams.service.IServiceService;
import com.ikats.common.annotation.LogonAuthority;
import com.ikats.common.config.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * @description 服务表
 * @author shnejian26@hotmail.com
 * @date 2019/3/12 10:51
 */
@RestController
@RequestMapping("CmsService")
public class ServiceController extends AbstractController {

    @Autowired
    private IServiceService iServiceService;


    /**
     * Web入口:翻页查询服务表
     * @param query
     * @return ServiceDto
     */
    @LogonAuthority
    @PostMapping("pageByQuery")
    public ServiceDto pageByQuery(@RequestBody ServiceQuery query, HttpServletRequest request) {
        String token = request.getHeader(Constants.AUTHORIZATION);
        query.setUserBean(getUserBean(token));
        return iServiceService.pageByQuery(query);
    }

}