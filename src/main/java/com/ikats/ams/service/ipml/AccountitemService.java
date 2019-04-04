package com.ikats.ams.service.ipml;

import com.ikats.ams.dao.AccountitemHistoryMapper;
import com.ikats.ams.dao.AccountitemMapper;
import com.ikats.ams.dao.AmsAttachmentMapper;
import com.ikats.ams.entity.*;
import com.ikats.ams.entity.dto.AccountitemDto;
import com.ikats.ams.entity.enumerate.AccountitemStatus;
import com.ikats.ams.entity.enumerate.InOutStatus;
import com.ikats.ams.entity.enumerate.StatusCode;
import com.ikats.ams.entity.query.AccountitemQuery;
import com.ikats.ams.service.IAccountitemService;

import com.ikats.common.util.Tools;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;


import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class AccountitemService implements IAccountitemService {


    @Autowired
    private AccountitemMapper accountitemMapper;

    @Autowired
    private AccountitemHistoryMapper accountitemHistoryMapper;

    @Autowired
    private AmsAttachmentMapper amsAttachmentMapper;



    @Transactional(rollbackFor = Exception.class)
    @Override
    public AccountitemDto insert(AccountitemQuery query, HashMap<String,Object> params) {
        AccountitemDto result = new AccountitemDto();
        UserBean user = query.getUserBean();
        HashMap<String,Object> dataRow = (HashMap<String,Object>)params.get("dataRow");
        //生成收支编码
        StringBuffer sb = new StringBuffer();
        String format = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
        sb.append(format);
        Random random = new Random();
        int rannum = (int) (random.nextDouble() * (99999 - 10000 + 1)) + 10000;// 获取5位随机数
        sb.append(rannum);
        AccountitemBean record = new AccountitemBean();
        record.setItemId(sb.toString());
        record.setStatus(Integer.parseInt(AccountitemStatus.NEW.getValue()));
        record.setAccountId(user.getOrgCode());
        record.setOrgId(user.getOrganizationId());
        record.setCreator(user.getId().toString());
        record.setInout(String.valueOf(dataRow.get("inout")));
        record.setRefNo(String.valueOf(dataRow.get("refNo")));
        record.setSettlementObjectId(String.valueOf(dataRow.get("settlementObjectId")));
        record.setSettleType(String.valueOf(dataRow.get("settleType")));
        record.setBusinessType(String.valueOf(dataRow.get("businessType")));
        record.setCategoryLevel1Name(String.valueOf(dataRow.get("categoryLevel1Name")));
        record.setCategoryLevel2Name(String.valueOf(dataRow.get("categoryLevel2Name")));
        record.setAmount(new BigDecimal(String.valueOf(dataRow.get("amount"))));
        record.setCurrency(String.valueOf(dataRow.get("currency")));
        record.setSettelmentAmount(new BigDecimal(String.valueOf(dataRow.get("settelmentAmount"))));
        record.setAccountCurrency(String.valueOf(dataRow.get("accountCurrency")));
        record.setExchangeRate(new BigDecimal(String.valueOf(dataRow.get("exchangeRate"))));
        record.setMyExchangeRate(new BigDecimal(String.valueOf(dataRow.get("myExchangeRate"))));
        record.setAccountBrief(String.valueOf(dataRow.get("accountBrief")));
        String tradeTime = String.valueOf(dataRow.get("tradeTime"));
        record.setTradeTime(Tools.jsDateTransform(tradeTime));
        record.setNote(String.valueOf(dataRow.get("note")));
        record.setSettlementObjectName(String.valueOf(dataRow.get("settlementObjectName")));
        record.setSettlementCurrency(String.valueOf(dataRow.get("settlementCurrency")));
        record.setCategoryLevel1Code(String.valueOf(dataRow.get("categoryLevel1Code")));
        record.setCategoryLevel2Code(String.valueOf(dataRow.get("categoryLevel2Code")));
        if (accountitemMapper.insert(record) == 1) {
            AccountitemBean accountitemBean = accountitemMapper.selectByKey(record.getId());
            accountitemBean.setVcId(accountitemBean.getId().intValue());
            accountitemBean.setVersion(String.valueOf(new Date().getTime()));
            if (accountitemHistoryMapper.insert(accountitemBean) != 1) {
                result.setSuccess(false);
                result.setMessage("保存失败");
                return result;
            }
        }
        else {
            result.setSuccess(false);
            result.setMessage("保存失败");
            return result;
        }
        result.setSuccess(true);
        return result;
    }


    @Override
    public AccountitemDto insertList(AccountitemQuery query) {
        return null;
    }

    @Override
    public AccountitemDto batchNew(AccountitemQuery query) {
        return null;
    }


    @Override
    public AccountitemDto delete(AccountitemQuery query) {
        AccountitemDto result = new AccountitemDto();
        int delete = accountitemMapper.delete(query.getId());
        if (delete != 1) {
            result.setSuccess(false);
            result.setMessage("删除错误");
            result.setCode(StatusCode.ERROR_DELETE.getValue());
            return result;
        }
        result.setSuccess(true);
        return result;
    }

    @Override
    public AccountitemDto update(AccountitemQuery query, HashMap<String,Object> params) {
        AccountitemDto result = new AccountitemDto();

        HashMap<String,Object> accountitem = (HashMap<String,Object>)params.get("dataRow");

        HashMap<String, Object> attachment = (HashMap<String, Object>) params.get("attachment");

        AccountitemBean bean = accountitemMapper.selectByKey(Long.valueOf(accountitem.get("id").toString()));
        if (bean.getStatus() > 2 ){
            result.setSuccess(false);
            result.setMessage("已审核,禁止修改");
            result.setCode(StatusCode.INFO_AUDIT_MODIFY_PROHIBITED.getValue());
            return result;
        }

        bean.setStatus(Integer.parseInt(AccountitemStatus.MODIFY.getValue()));
        bean.setModifiedBy(query.getUserBean().getId().toString());
        bean.setNote(String.valueOf(accountitem.get("note")));
        accountitemMapper.update(bean);


        //历史版本表
        AccountitemBean accountitemBean1 = accountitemMapper.selectByKey(Long.valueOf(accountitem.get("id").toString()));
        accountitemBean1.setVcId(Integer.valueOf(accountitem.get("id").toString()));
        accountitemBean1.setVersion(String.valueOf(new Date().getTime()));
        accountitemHistoryMapper.insert(accountitemBean1);

        //附件
        if (!CollectionUtils.isEmpty(attachment)) {
            if (attachment.get("attachmentUrl") != null) {
                AmsAttachmentBean amsAttachmentBean = new AmsAttachmentBean();
                amsAttachmentBean.setId(Long.valueOf(attachment.get("id") != null ? attachment.get("id").toString() : ""));
                //添加新的附件
                amsAttachmentBean.setAttachmentUrl(attachment.get("attachmentUrl").toString());
                //modify bu liu
                amsAttachmentMapper.insert(amsAttachmentBean);
                result.setSuccess(true);
            } else {
                result.setSuccess(false);
            }
            result.setSuccess(true);
        }
        result.setSuccess(true);
        return result;
    }

    @Override
    public AccountitemDto selectByKey(AccountitemQuery query) {
        AccountitemDto result = new AccountitemDto();
        AccountitemBean accountitemBean = accountitemMapper.selectByKey(query.getId());
        if (accountitemBean == null) {
            result.setSuccess(false);
            result.setMessage("没有找到");
            result.setCode(StatusCode.INFO_NO_QUERY.getValue());
            return result;
        }
        result.setSuccess(true);
        result.setDataRow(accountitemBean);
        return result;
    }

    @Override
    public AccountitemDto selectCount(AccountitemQuery query) {
        return null;
    }

    @Override
    public AccountitemDto selectCountByOrgId(AccountitemQuery query) {
        AccountitemDto result = new AccountitemDto();
        Map<String, String> express = query.getExpress();
        UserBean userBean = query.getUserBean();
        express.put("orgId", userBean.getOrganizationId().toString());
        Long aLong = accountitemMapper.selectCount(express);
        if (aLong <= 0) {
            result.setSuccess(false);
            result.setMessage("没有找到");
            result.setCode(StatusCode.INFO_NO_QUERY.getValue());
        }
        result.setSuccess(true);
        result.setCount(aLong);
        return result;
    }

    @Override
    public AccountitemDto pageByQuery(AccountitemQuery query) {
        AccountitemDto result = new AccountitemDto();
        UserBean userBean = query.getUserBean();
        Map<String, String> express = query.getExpress();
        express.put("orgId", userBean.getOrganizationId().toString());
        if (express.containsKey("categoryLevel2Code")) {
            String code = iscode(express.get("categoryLevel2Code"));
            express.put("categoryLevel2Code", code.substring(1, code.length() - 1));
        }
        //状态查询打包
        if (express.containsKey("status")) {
            if (express.get("status").equals(AccountitemStatus.NOT_AUDIT.getValue())) {
                express.put("notAudit", AccountitemStatus.MODIFY.getValue());
                express.remove("status");
            } else if (express.get("status").equals(AccountitemStatus.NOT_GENERATED_BILL.getValue())) {
                express.put("notBill", AccountitemStatus.AUDIT.getValue());
                express.remove("status");
            } else if (express.get("status").equals(AccountitemStatus.NOT_PAID.getValue())) {
                express.put("notPaid", AccountitemStatus.INVOICED.getValue());
                express.remove("status");
            }
        }
        //查询
        List<AccountitemBean> beanList = new ArrayList<>();
        if (query.getPageNum()==0){
            beanList = accountitemMapper.selectByQuery(express);
        }else {
            int pageNum = query.getPageSize()*(query.getPageNum()-1);
            beanList = accountitemMapper.pageByQuery(pageNum,query.getPageSize(),express);
        }
        //计算收支总数,计算根据业务类型分组后的收支总数,和每组的条数
        if (express.containsKey("inout") && !StringUtils.isEmpty(express.get("inout"))) {
            existInout(userBean,express,result);
        } else {
            noExistInout(userBean,express,result);
        }

        //拼接费用明细对应的名称
        if (CollectionUtils.isEmpty(beanList)) {
            result = new AccountitemDto();
            result.setSuccess(false);
            result.setMessage("没有找到");
            result.setCode(StatusCode.INFO_NO_QUERY.getValue());
            return result;
        }
        result.setDataTable(beanList);
        result.setSuccess(true);
        return result;
    }

    //查询条件未提供收支字段的时候,执行此方法求出收支总和
    private void existInout(UserBean user, Map<String,String> express, AccountitemDto result){
        express.put("orgId", user.getOrganizationId().toString());
        if (express.get("inout").equals(InOutStatus.REVENUE.getValue())) {
            AccountitemBean sum = accountitemMapper.sum(express);
            BigDecimal revenue = new BigDecimal(0.00);
            if (sum.getOop() != null) {
                revenue = sum.getOop().setScale(2, BigDecimal.ROUND_HALF_UP);
            }
            List<AccountitemBean> beans = accountitemMapper.sumA(express);
            List<Inout> inouts = new ArrayList<>();
            for (int i = 0; i < beans.size(); i++) {
                inouts.add(new Inout());
                result.setInout(inouts);
                result.getInout().get(i).setRevenue(beans.get(i).getOop().setScale(2, BigDecimal.ROUND_HALF_UP));
                result.getInout().get(i).setBusinessType(beans.get(i).getBusinessType());
                result.getInout().get(i).setNum(beans.get(i).getNum());
            }
            result.setMoney(new Money());
            result.getMoney().setRevenueAll(revenue);
            result.getMoney().setNumAll(sum.getNum());
        } else if (express.get("inout").equals(InOutStatus.DISBURSEMENT.getValue())) {
            AccountitemBean sum = accountitemMapper.sum(express);
            BigDecimal disbursement = new BigDecimal(0.00);
            if (sum.getOop() != null) {
                disbursement = sum.getOop().setScale(2, BigDecimal.ROUND_HALF_UP);
            }
            List<AccountitemBean> beans = accountitemMapper.sumA(express);
            List<Inout> inouts = new ArrayList<>();
            for (int i = 0; i < beans.size(); i++) {
                inouts.add(new Inout());
                result.setInout(inouts);
                result.getInout().get(i).setDisbursement(beans.get(i).getOop().setScale(2, BigDecimal.ROUND_HALF_UP));
                result.getInout().get(i).setBusinessType(beans.get(i).getBusinessType());
                result.getInout().get(i).setNum(beans.get(i).getNum());
            }
            result.setMoney(new Money());
            result.getMoney().setDisbursementAll(disbursement);
            result.getMoney().setNumAll(sum.getNum());
        }
    }

    //当查询条件没有收支的是,计算出收入和/支出和
    private void noExistInout(UserBean user, Map<String,String> express, AccountitemDto result){
        express.put("inout", InOutStatus.REVENUE.getValue());
        express.put("orgId", user.getOrganizationId().toString());
        AccountitemBean sum = accountitemMapper.sum(express);
        List<AccountitemBean> revenueBeans = accountitemMapper.sumA(express);
        express.put("inout", InOutStatus.DISBURSEMENT.getValue());
        AccountitemBean sumBean = accountitemMapper.sum(express);
        List<AccountitemBean> disbursementBeans = accountitemMapper.sumA(express);
        BigDecimal revenue = new BigDecimal(0.00);
        BigDecimal disbursement = new BigDecimal(0.00);
        if (sum.getOop() != null) {
            revenue = sum.getOop().setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        if (sumBean.getOop() != null) {
            disbursement = sumBean.getOop().setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        List<Inout> inouts = new ArrayList<>();
        if (revenueBeans.size() >= disbursementBeans.size()) {
            for (int i = 0; i < revenueBeans.size(); i++) {
                inouts.add(new Inout());
                result.setInout(inouts);
                result.getInout().get(i).setRevenue(revenueBeans.get(i).getOop().setScale(2, BigDecimal.ROUND_HALF_UP));
                result.getInout().get(i).setBusinessType(revenueBeans.get(i).getBusinessType());
                result.getInout().get(i).setNum(revenueBeans.get(i).getNum());
            }
            for (int i = 0; i < disbursementBeans.size(); i++) {
                for (int j = 0; j < revenueBeans.size(); j++) {
                    if (disbursementBeans.get(i).getBusinessType().equals(result.getInout().get(j).getBusinessType())) {
                        result.getInout().get(j).setDisbursement(disbursementBeans.get(i).getOop().setScale(2, BigDecimal.ROUND_HALF_UP));
                        result.getInout().get(j).setNum(result.getInout().get(j).getNum() + disbursementBeans.get(i).getNum());
                    }
                }
            }
        } else if (revenueBeans.size() <= disbursementBeans.size()) {
            for (int i = 0; i < disbursementBeans.size(); i++) {
                inouts.add(new Inout());
                result.setInout(inouts);
                result.getInout().get(i).setDisbursement(disbursementBeans.get(i).getOop().setScale(2, BigDecimal.ROUND_HALF_UP));
                result.getInout().get(i).setBusinessType(disbursementBeans.get(i).getBusinessType());
                result.getInout().get(i).setNum(disbursementBeans.get(i).getNum());
            }
            for (int i = 0; i < revenueBeans.size(); i++) {
                for (int j = 0; j < disbursementBeans.size(); j++) {
                    if (revenueBeans.get(i).getBusinessType().equals(result.getInout().get(j).getBusinessType())) {
                        result.getInout().get(j).setRevenue(revenueBeans.get(i).getOop().setScale(2, BigDecimal.ROUND_HALF_UP));
                        result.getInout().get(j).setNum(result.getInout().get(j).getNum() + revenueBeans.get(i).getNum());
                    }
                }
            }
        }
        result.setMoney(new Money());
        result.getMoney().setRevenueAll(revenue);
        result.getMoney().setDisbursementAll(disbursement);
        result.getMoney().setNumAll(sum.getNum() + sumBean.getNum());
    }



    //拼接code2的查询条件
    public String iscode(String Str) {
        String[] ary = Str.split(",");
        StringBuffer sb = new StringBuffer();
        for (String item : ary) {
            sb.append("'");
            sb.append(item.toString());
            sb.append("'");
            sb.append(",");
        }
        sb = sb.deleteCharAt(sb.length() - 1);
        return sb.toString();

    }


    @Override
    public AccountitemDto updateAll(AccountitemQuery query) {
        return null;
    }


    @Transactional(rollbackFor = Exception.class)
    @Override
    public AccountitemDto updateStatus(AccountitemQuery query) {

        AccountitemDto result = new AccountitemDto();

        UserBean user = query.getUserBean();

        List<AccountitemBean> records = query.getDataTable();

        records.stream().forEach(items -> items.setAuditor(user.getId().toString()));

        for (int i = 0; i < records.size(); i++) {
            AccountitemBean accountitemBean = accountitemMapper.selectByKey(records.get(i).getId());
            if (accountitemBean.getStatus().toString().equals(AccountitemStatus.GENERATED_BILL.getValue())) {
                records.get(i).setStatus(accountitemBean.getStatus());
            } else if (accountitemBean.getStatus().toString().equals(AccountitemStatus.INVOICED.getValue())) {
                records.get(i).setStatus(accountitemBean.getStatus());
            } else if (accountitemBean.getStatus().toString().equals(AccountitemStatus.PAID.getValue())) {
                records.get(i).setStatus(accountitemBean.getStatus());
            }
            accountitemMapper.updateStatus(records);
        }

        for (int i = 0; i < records.size(); i++) {
            AccountitemBean accountitemBean = accountitemMapper.selectByKey(records.get(i).getId());
            accountitemBean.setVcId(accountitemBean.getId().intValue());
            accountitemBean.setVersion(String.valueOf(new Date().getTime()));
            accountitemHistoryMapper.insert(accountitemBean);
        }
        result.setSuccess(true);
        return result;
    }

    @Override
    public AccountitemDto getItemListById(AccountitemQuery query) {
        return null;
    }

    @Override
    public HashMap addAccountExpenses(AccountitemCopyDto accountitemDto) {
        return null;
    }
}
