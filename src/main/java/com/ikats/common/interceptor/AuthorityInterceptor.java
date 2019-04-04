package com.ikats.common.interceptor;

import com.alibaba.fastjson.JSONObject;

import com.ikats.ams.controller.AbstractController;
import com.ikats.common.annotation.LogonAuthority;
import com.ikats.common.config.Constants;
import com.ikats.common.util.SendMsgUtil;

import org.apache.commons.lang3.StringUtils;

import org.springframework.stereotype.Component;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 权限校验
 */
@Component
public class AuthorityInterceptor extends AbstractController implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        if(handler.getClass().isAssignableFrom(HandlerMethod.class)){

            HandlerMethod handlerMethod = (HandlerMethod) handler;

            LogonAuthority authority = handlerMethod.getMethod().getAnnotation(LogonAuthority.class);

            String authorization = request.getHeader(Constants.AUTHORIZATION);

            if(null != authority) {
                if(StringUtils.isBlank(authorization)){
                    JSONObject json = new JSONObject();
                    json.put("success",false);
                    json.put("message","登陆失败");
                    json.put("errorStatus",405);
                    SendMsgUtil.sendJsonMessage(response,json);
                    return false;
                }
                boolean status = this.checkToken(authorization);
                if(!status) {
                    JSONObject json = new JSONObject(true);
                    json.put("success",false);
                    json.put("message","登陆失效");
                    json.put("errorStatus",405);
                    SendMsgUtil.sendJsonMessage(response,json);
                    return false;
                }
                else{
                    return true;
                }
            }
            else{
                return true;
            }
        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }







}
