package com.ikats.common.interceptor;

import com.alibaba.fastjson.JSONObject;
import com.ikats.ams.service.IPermissionService;
import com.ikats.ams.service.IRedisService;
import com.ikats.common.annotation.Accesspermission;
import com.ikats.common.config.Constant;
import com.ikats.common.config.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

@Component
public class PermissionInterceptor  extends HandlerInterceptorAdapter {

    @Autowired
    private IPermissionService service;

    @Autowired
    private IRedisService redisService;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        if(handler.getClass().isAssignableFrom(HandlerMethod.class)){
            //获取当前调用方法的注解
            HandlerMethod handlerMethod = (HandlerMethod) handler;
            //Accesspermission
            Accesspermission authority = handlerMethod.getMethod().getAnnotation(Accesspermission.class);
            //如果有注解的话校验权限
            if(null != authority)
            {
                //从header中得到token
                String token = request.getHeader(Constants.AUTHORIZATION);
                String checkPermission = this.checkPermission(token);
                String[] permissionArray = getSubStr(checkPermission);
                String userPermission = request.getServletPath();
                PrintWriter out = null;
                if (permissionArray.length>0){
                    for (int i=0;i<permissionArray.length;i++){
                        String permission = permissionArray[i];
                        if (userPermission.equals(permission)){
                            return true;
                        }
                    }
                }else{
                    out = response.getWriter();
                    JSONObject json = new JSONObject(true);
                    json.put("success",false);
                    json.put("message","很抱歉,您没有权限");
                    out.append(json.toJSONString());
                    return false;
                }
            }
            else
            {
                //无注解放行
                return true;
            }
        }
        PrintWriter out = null;
        out = response.getWriter();
        JSONObject json = new JSONObject(true);
        json.put("success",false);
        json.put("message","很抱歉,您没有权限");
        out.append(json.toJSONString());
        return false;
    }
    private static String[] getSubStr(String str) {
        String[] strArray = null;
        strArray = str.split("#"); //拆分字符为"#" ,然后把结果交给数组strArray
        return strArray;
    }


    /**
     * 获取Permission值
     * @param auth
     * @return value
     */
    public synchronized  String checkPermission(String auth){
        String str = new String("没有权限");
        String[] param = auth.split(",");
        String per = "A"+param[0];
        if ( !redisService.exists(per)) {
            return str;
        }
        redisService.expiretime(per,1800L);
        redisService.expiretime((Constant.REDIS_USERBEAN + per),1800L);
        String permisson = (String) redisService.get(per);
        return permisson;
    }


}
