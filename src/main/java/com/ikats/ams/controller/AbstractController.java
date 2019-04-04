package com.ikats.ams.controller;


import com.ikats.ams.entity.AccountCategoryBean;
import com.ikats.ams.entity.UserBean;
import com.ikats.ams.entity.dto.AccountCategoryDto;
import com.ikats.ams.entity.query.AccountCategoryQuery;
import com.ikats.ams.service.IRedisService;

import com.ikats.common.config.Constant;


import com.ikats.common.config.Constants;
import com.ikats.common.redis.AutoTokenUtil;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;


import java.util.Iterator;
import java.util.List;


public abstract class AbstractController {

    protected static Logger logger = Logger.getLogger(AbstractController.class);

    @Autowired
    private IRedisService iRedisService;


    /**
     * redis 保存UserBean
     *
     * @param bean
     */
    public synchronized String setUserBean(UserBean bean) {
        String token = "";
        try {
            token = AutoTokenUtil.generationUUID();
            iRedisService.set((Constants.redisUser + bean.getId()),bean);
        } catch (Exception e) {
            logger.error("Set key error : " + e);
        }
        return token;
    }


    /**
     * redis 保存token
     *
     * @param key
     */
    public synchronized String setToken(String key){
        String token = "";
        try{
            token = AutoTokenUtil.generationUUID();
            iRedisService.set(key,token);
            iRedisService.exists(key);
            iRedisService.get(key);
        } catch (Exception e) {
            logger.error("Set key error : " + e);
        }
        return token;
    }

    /**
     * 校验Token值
     * @param auth
     * @return value
     */
     public synchronized boolean checkToken(String auth){
        String[] param = auth.split(",");
        if (!iRedisService.exists(param[0])){
            return false;
        }
        if(param.length == 2){
            Object redisToken = iRedisService.get(param[0]);
            if(redisToken.equals(param[1])) {
                iRedisService.expiretime(param[0],1800L);
                iRedisService.expiretime((Constant.REDIS_USERBEAN + param[0]),1800L);
                return true;
            }
        }
        return false;
    }


    /**
     * 删除token
     * @return
     */
    public synchronized  void removeToken(String auth) {
        String[] param = auth.split(",");
        if(param.length == 2) {
            String redisToken = (String)iRedisService.get(param[0]);
            if(redisToken.equals(param[1])) {
                iRedisService.removePattern(param[0]);
                iRedisService.removePattern((Constants.redisUser + param[0]));
                iRedisService.removePattern("A"+param[0]);
            }
        }
    }


    /**
     * 获取UserBean
     * @param token
     * @return value
     */
    public synchronized UserBean getUserBean(String token) {
        String[] param = token.split(",");
        if(param.length == 2 && !iRedisService.exists(param[0])) {
            return null;
        }
        UserBean bean = (UserBean)iRedisService.get((Constants.redisUser + param[0]));
        return bean;
    }

    /**
     * redis 保存permission
     *
     * @param key
     */
    public synchronized  String setPerToken(String key, String per){
        String token = "";
        try{
            token = AutoTokenUtil.generationUUID() + per;
            iRedisService.set(key,token);
        } catch (Exception e) {
            logger.error("Set key error : " + e);
        }
        return token;
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
        if (!iRedisService.exists(per)) {
            return str;
        }
        String permisson = (String) iRedisService.get(per);
        renewTokenExpireTime(per);
        return permisson;
    }

    /**
     * 更新token的过期时间
     * @param key
     * @return
     */
    public synchronized  void renewTokenExpireTime(String key){
        if (iRedisService.exists(key)){
            iRedisService.expiretime(key,Constants.expireTime);
            iRedisService.expiretime((Constants.redisUser + key),Constants.expireTime);
        }

    }



    protected static String checkAccountCategory(UserBean userBean, AccountCategoryQuery query, AccountCategoryDto dto) {
        StringBuilder sb = new StringBuilder();
        query.getExpress().put("orgId", userBean.getOrganizationId().toString());
        Iterator<AccountCategoryBean> it = query.getDataTable().iterator();
        while (it.hasNext()) {
            AccountCategoryBean bean = it.next();
            if (StringUtils.isEmpty(bean.getCategoryCode()) && StringUtils.isEmpty(bean.getCategoryName())) {
                it.remove();
            }
        }
        for (int i = 0; i < query.getDataTable().size(); i++) {
            if (StringUtils.isEmpty(query.getDataTable().get(i).getCategoryCode()) & !StringUtils.isEmpty(query.getDataTable().get(i).getCategoryName())) {
                sb.append("收费项目为" + query.getDataTable().get(i).getCategoryName() + "的数据,没有对应的费用项目编号|");
//                sb.append(StatusCode.INFO_EXCEL_A.getValue() + query.getDataTable().get(i).getCategoryName() + StatusCode.INFO_EXCEL_B.getValue());
            }
            if (StringUtils.isEmpty(query.getDataTable().get(i).getCategoryName()) & !StringUtils.isEmpty(query.getDataTable().get(i).getCategoryCode())) {
                sb.append("费用项目编号为" + query.getDataTable().get(i).getCategoryCode() + "的数据,没有对应的收费项目|");
//                sb.append(StatusCode.INFO_EXCEL_C.getValue() + query.getDataTable().get(i).getCategoryCode() + StatusCode.INFO_EXCEL_D.getValue());
            }
        }
        for (int i = 0; i < query.getDataList().size(); i++) {
            if (StringUtils.isEmpty(query.getDataList().get(i).getCategoryCode()) & !StringUtils.isEmpty(query.getDataList().get(i).getCategoryName())) {
                sb.append("费用明细为" + query.getDataList().get(i).getCategoryName() + "的数据,没有对应的费用明细编号|");
//                sb.append(StatusCode.INFO_EXCEL_E.getValue() + query.getDataList().get(i).getCategoryName() + StatusCode.INFO_EXCEL_F.getValue());
            }
            if (StringUtils.isEmpty(query.getDataList().get(i).getCategoryName()) & !StringUtils.isEmpty(query.getDataList().get(i).getCategoryCode())) {
                sb.append("费用明细编号为" + query.getDataList().get(i).getCategoryCode() + "的数据,没有对应的费用明细|");
//                sb.append(StatusCode.INFO_EXCEL_G.getValue() + query.getDataList().get(i).getCategoryCode() + StatusCode.INFO_EXCEL_G.getValue());
            }
        }
        if (StringUtils.isNotEmpty(sb.toString())) {
            return sb.toString();
        }
        for (int i = 0;i<query.getDataTable().size();i++){
            boolean exist = false;
            String code = query.getDataTable().get(i).getCategoryCode();
            for (int j=i+1;j<query.getDataTable().size();j++){
                String coudeA = query.getDataTable().get(j).getCategoryCode();
                if (code.equals(coudeA)){
//                    sb.append(StatusCode.INFO_EXCEL_C.getValue()+query.getDataTable().get(i).getCategoryCode()+StatusCode.INFO_EXCEL_L.getValue());
                    sb.append("费用项目编号为"+query.getDataTable().get(i).getCategoryCode()+"重复|");
                    exist =true;
                    break;
                }
            }
            if (exist){
                break;
            }
        }
        for (int i=0;i<query.getDataTable().size();i++){
            boolean exist =false;
            String name = query.getDataTable().get(i).getCategoryName();
            for(int j=i+1;j<query.getDataTable().size();j++){
                String nameA = query.getDataTable().get(j).getCategoryName();
                if (name.equals(nameA)){
//                    sb.append(StatusCode.INFO_EXCEL_A.getValue()+query.getDataTable().get(i).getCategoryName()+StatusCode.INFO_EXCEL_L.getValue());
                    sb.append("收费项目为"+query.getDataTable().get(i).getCategoryName()+"重复|");
                    exist =true;
                    break;
                }
            }
            if (exist){
                break;
            }
        }
        for(int i=0;i<query.getDataList().size();i++){
            boolean exist =false;
            String code = query.getDataList().get(i).getCategoryCode();
            for (int j=i+1;j<query.getDataList().size();j++){
                String codeA = query.getDataList().get(j).getCategoryCode();
                if (code.equals(codeA)){
//                    sb.append(StatusCode.INFO_EXCEL_G.getValue()+query.getDataList().get(j).getCategoryCode()+StatusCode.INFO_EXCEL_L.getValue());
                    sb.append("费用明细编号为"+query.getDataList().get(j).getCategoryCode()+"重复|");
                    exist =true;
                    break;
                }
            }
            if (exist){
                break;
            }
        }
        for (int i=0;i<query.getDataList().size();i++){
            boolean exist =false;
            String name = query.getDataList().get(i).getCategoryName();
            for (int j=i+1;j<query.getDataList().size();j++){
                String nameA = query.getDataList().get(j).getCategoryName();
                if (name.equals(nameA)){
//                    sb.append(StatusCode.INFO_EXCEL_E.getValue()+ query.getDataList().get(j).getCategoryName()+StatusCode.INFO_EXCEL_L.getValue());
                    sb.append("费用明细为"+query.getDataList().get(j).getCategoryName()+"重复|");
                    exist =true;
                    break;
                }
            }
            if (exist){
                break;
            }
        }
        if (StringUtils.isNotEmpty(sb.toString())) {
            return sb.toString();
        }
        for (int i = 0; i < query.getDataTable().size(); i++) {
            String pCode = query.getDataTable().get(i).getCategoryCode();
            for (int j = 0; j < query.getDataList().size(); j++) {
                String cCode = query.getDataList().get(j).getCategoryCode();
                String newCode = cCode.substring(0, 3);
                if (pCode.equals(newCode)) {
                    query.getDataList().get(j).setExist(true);
                }
            }
        }
        for (int i = 0; i < query.getDataList().size(); i++) {
            boolean exist = query.getDataList().get(i).isExist();
            if (!exist) {
                sb.append("费用明细编号为" + query.getDataList().get(i).getCategoryCode() + "的数据,没有对应的费用明细|");
//                sb.append( StatusCode.INFO_EXCEL_G.getValue()+ query.getDataList().get(i).getCategoryCode() + StatusCode.INFO_EXCEL_H.getValue());
            }
        }
        List<AccountCategoryBean> categoryBeans = dto.getDataTable();
        if (categoryBeans!=null&&categoryBeans.size() > 0) {
            for (int i = 0; i < categoryBeans.size(); i++) {
                String existCode = categoryBeans.get(i).getCategoryCode();
                String existName = categoryBeans.get(i).getCategoryName();
                for (int j = 0; j < query.getDataTable().size(); j++) {
                    String pCode = query.getDataTable().get(j).getCategoryCode();
                    String pName = query.getDataTable().get(j).getCategoryName();
                    if (pCode.equals(existCode)) {
                        sb.append("费用项目编号为" + query.getDataTable().get(j).getCategoryCode() + "收费项目已存在|");
//                        sb.append(StatusCode.INFO_EXCEL_C.getValue() + query.getDataTable().get(j).getCategoryCode() + StatusCode.INFO_EXCEL_I.getValue());
                    }
                    if (pName.equals(existName)) {
                        sb.append("收费项目为" + query.getDataTable().get(j).getCategoryName() + "已存在|");
//                        sb.append(StatusCode.INFO_EXCEL_A.getValue() + query.getDataTable().get(j).getCategoryName() + StatusCode.INFO_EXCEL_J.getValue());
                    }
                }
                for (int l = 0; l < query.getDataList().size(); l++) {
                    String cCode = query.getDataList().get(l).getCategoryCode();
                    if (cCode.equals(existCode)) {
                        sb.append("费用明细编号为" + query.getDataList().get(l).getCategoryCode() + "费用明细已存在|");
//                        sb.append(StatusCode.INFO_EXCEL_G.getValue() + query.getDataList().get(l).getCategoryCode() + StatusCode.INFO_EXCEL_K.getValue());
                    }
                }
            }
        }
        if (StringUtils.isNotEmpty(sb.toString())) {
            return sb.toString();
        }
        if (userBean.getId() != null) {
            List<AccountCategoryBean> beans = query.getDataTable();
            for (int i = 0; i < beans.size(); i++) {
                beans.get(i).setAccountId(userBean.getOrgCode());
                beans.get(i).setOrgId(userBean.getOrganizationId());
                beans.get(i).setCreator(userBean.getId().toString());
                beans.get(i).setPid(0);
            }
            List<AccountCategoryBean> beanList = query.getDataList();
            for (int i = 0; i < beanList.size(); i++) {
                beanList.get(i).setAccountId(userBean.getOrgCode());
                beanList.get(i).setOrgId(userBean.getOrganizationId());
                beanList.get(i).setCreator(userBean.getId().toString());
            }
        }
        return null;
    }




}
