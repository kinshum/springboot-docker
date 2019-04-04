package com.ikats.ams.entity;

import java.math.BigDecimal;
import java.util.Date;


public class AccountitemBean implements java.io.Serializable {
    private static final long serialVersionUID = 1L;

    private Long id;

    /** 明细编码
     ， */
    private String itemId;

    /** 账套编码
     ， */
    private String accountId;

    /** 一级分类编码
     ， */
    private String categoryLevel1Code;

    /** 二级分类编码
     ， */
    private String categoryLevel2Code;

    /** 记账科目编码
     ， */
    private String categoryCode;

    /** 结算对象编码
     ， */
    private String settlementObjectId;

    /** 结算类型
     ， */
    private String settleType;

    /** 交易简称
     ， */
    private String accountBrief;

    /** 交易金额
     ， */
    private BigDecimal amount;

    /** 交易币种
     ， */
    private String currency;

    /** 汇率
     ， */
    private BigDecimal exchangeRate;

    /** 结算金额
     ， */
    private BigDecimal settelmentAmount;

    /** 交易时间
     ， */
    private Date tradeTime;

    /** 交易时间 查询冗余
     ， */
    private Date tradeTimeEnd;
    /** 创建人
     ， */
    private String creator;

    /** 创建时间
     ， */
    private Date createTime;

    /** 修改人
     ， */
    private String modifiedBy;

    /** 修改时间
     ， */
    private Date modifyTime;

    /** 审批人
     ， */
    private String auditor;

    /** 审批时间
     ， */
    private Date auditTime;

    /** 业务编码
     ， */
    private String refNo;

    /** 账单号
     ， */
    private String billNo;

    /** 备注
     ， */
    private String note;

    /** 附件
     ， */
    private String attachement;

    /** 状态:0存在,1已删除 */
    private String df;

    /**组织ID   */
    private Integer   orgId;

    /**交易单价*/
    private BigDecimal unitPrice;

    /**交易单位*/
    private String  tradeUnit;

    /**交易数量*/
    private BigDecimal count;

    private BigDecimal oop;

    //未审核
    private String notAudit;

    //未生成账单
    private String notBill;

    //未结款
    private String notPaid;


    /** 明细状态:0-失效/删除; 1-新增; 2- 已修改; 10-已审核; 20-已生成账单; 21-已确认；30 - 已开票; 50 - 已结款
     ， */
    private Integer status;

    /** 收入支出 ps:I-收入;O-支出 */
    private String inout;

    private BigDecimal myExchangeRate;

    //业务类型
    private String  businessType;

    //账套币种
    private String  accountCurrency;

    //结算对象币种

    private String  settlementCurrency;

    private   String categoryLevel1Name;

    private   String categoryLevel2Name;

    private String settlementObjectName;

    private String currency1;

    private String currency2;

    private Integer num;

    private AmsAttachmentBean attachmentBean;

    /** 版本号 */
    private String version;

    /** 关联记账明细的id */
    private Integer vcId;

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public BigDecimal getOop() {
        return oop;
    }

    public void setOop(BigDecimal oop) {
        this.oop = oop;
    }

    public Integer getOrgId() {		return orgId;	}
    public void setOrgId(Integer orgId) {		this.orgId = orgId;	}
    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 获得 明细编码
     ，
     *
     * @return 明细编码
    ，
     */
    public String getItemId() {
        return this.itemId;
    }

    /**
     * 设置 明细编码
     ，
     *
     * @param itemId 明细编码
    ，
     */
    public void setItemId(String itemId) {
        this.itemId = itemId;
    }

    /**
     * 获得 账套编码
     ，
     *
     * @return 账套编码
    ，
     */
    public String getAccountId() {
        return this.accountId;
    }

    /**
     * 设置 账套编码
     ，
     *
     * @param accountId 账套编码
    ，
     */
    public void setAccountId(String accountId) {
        this.accountId = accountId;
    }

    /**
     * 获得 一级分类编码
     ，
     *
     * @return 一级分类编码
    ，
     */
    public String getCategoryLevel1Code() {
        return this.categoryLevel1Code;
    }

    /**
     * 设置 一级分类编码
     ，
     *
     * @param categoryLevel1Code 一级分类编码
    ，
     */
    public void setCategoryLevel1Code(String categoryLevel1Code) {
        this.categoryLevel1Code = categoryLevel1Code;
    }

    /**
     * 获得 二级分类编码
     ，
     *
     * @return 二级分类编码
    ，
     */
    public String getCategoryLevel2Code() {
        return this.categoryLevel2Code;
    }

    /**
     * 设置 二级分类编码
     ，
     *
     * @param categoryLevel2Code 二级分类编码
    ，
     */
    public void setCategoryLevel2Code(String categoryLevel2Code) {
        this.categoryLevel2Code = categoryLevel2Code;
    }

    /**
     * 获得 记账科目编码
     ，
     *
     * @return 记账科目编码
    ，
     */
    public String getCategoryCode() {
        return this.categoryCode;
    }

    /**
     * 设置 记账科目编码
     ，
     *
     * @param categoryCode 记账科目编码
    ，
     */
    public void setCategoryCode(String categoryCode) {
        this.categoryCode = categoryCode;
    }

    /**
     * 获得 结算对象编码
     ，
     *
     * @return 结算对象编码
    ，
     */
    public String getSettlementObjectId() {
        return this.settlementObjectId;
    }

    /**
     * 设置 结算对象编码
     ，
     *
     * @param settlementObjectId 结算对象编码
    ，
     */
    public void setSettlementObjectId(String settlementObjectId) {
        this.settlementObjectId = settlementObjectId;
    }

    /**
     * 获得 结算类型
     ，
     *
     * @return 结算类型
    ，
     */
    public String getSettleType() {
        return this.settleType;
    }

    /**
     * 设置 结算类型
     ，
     *
     * @param settleType 结算类型
    ，
     */
    public void setSettleType(String settleType) {
        this.settleType = settleType;
    }

    /**
     * 获得 交易简称
     ，
     *
     * @return 交易简称
    ，
     */
    public String getAccountBrief() {
        return this.accountBrief;
    }

    /**
     * 设置 交易简称
     ，
     *
     * @param accountBrief 交易简称
    ，
     */
    public void setAccountBrief(String accountBrief) {
        this.accountBrief = accountBrief;
    }

    /**
     * 获得 交易金额
     ，
     *
     * @return 交易金额
    ，
     */
    public BigDecimal getAmount() {
        return this.amount;
    }

    /**
     * 设置 交易金额
     ，
     *
     * @param amount 交易金额
    ，
     */
    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    /**
     * 获得 交易币种
     ，
     *
     * @return 交易币种
    ，
     */
    public String getCurrency() {
        return this.currency;
    }

    /**
     * 设置 交易币种
     ，
     *
     * @param currency 交易币种
    ，
     */
    public void setCurrency(String currency) {
        this.currency = currency;
    }

    /**
     * 获得 汇率
     ，
     *
     * @return 汇率
    ，
     */
    public BigDecimal getExchangeRate() {
        return this.exchangeRate;
    }

    /**
     * 设置 汇率
     ，
     *
     * @param exchangeRate 汇率
    ，
     */
    public void setExchangeRate(BigDecimal exchangeRate) {
        this.exchangeRate = exchangeRate;
    }

    /**
     * 获得 结算金额
     ，
     *
     * @return 结算金额
    ，
     */
    public BigDecimal getSettelmentAmount() {
        return this.settelmentAmount;
    }

    /**
     * 设置 结算金额
     ，
     *
     * @param settelmentAmount 结算金额
    ，
     */
    public void setSettelmentAmount(BigDecimal settelmentAmount) {
        this.settelmentAmount = settelmentAmount;
    }

    /**
     * 获得 交易时间
     ，
     *
     * @return 交易时间
    ，
     */
    public Date getTradeTime() {
        return this.tradeTime;
    }

    /**
     * 设置 交易时间
     ，
     *
     * @param tradeTime 交易时间
    ，
     */
    public void setTradeTime(Date tradeTime) {
        this.tradeTime = tradeTime;
    }

    /**
     * 获得 创建人
     ，
     *
     * @return 创建人
    ，
     */
    public String getCreator() {
        return this.creator;
    }

    /**
     * 设置 创建人
     ，
     *
     * @param creator 创建人
    ，
     */
    public void setCreator(String creator) {
        this.creator = creator;
    }

    /**
     * 获得 创建时间
     ，
     *
     * @return 创建时间
    ，
     */
    public Date getCreateTime() {
        return this.createTime;
    }

    /**
     * 设置 创建时间
     ，
     *
     * @param createTime 创建时间
    ，
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * 获得 修改人
     ，
     *
     * @return 修改人
    ，
     */
    public String getModifiedBy() {
        return this.modifiedBy;
    }

    /**
     * 设置 修改人
     ，
     *
     * @param modifiedBy 修改人
    ，
     */
    public void setModifiedBy(String modifiedBy) {
        this.modifiedBy = modifiedBy;
    }

    /**
     * 获得 修改时间
     ，
     *
     * @return 修改时间
    ，
     */
    public Date getModifyTime() {
        return this.modifyTime;
    }

    /**
     * 设置 修改时间
     ，
     *
     * @param modifyTime 修改时间
    ，
     */
    public void setModifyTime(Date modifyTime) {
        this.modifyTime = modifyTime;
    }

    /**
     * 获得 审批人
     ，
     *
     * @return 审批人
    ，
     */
    public String getAuditor() {
        return this.auditor;
    }

    /**
     * 设置 审批人
     ，
     *
     * @param auditor 审批人
    ，
     */
    public void setAuditor(String auditor) {
        this.auditor = auditor;
    }

    /**
     * 获得 审批时间
     ，
     *
     * @return 审批时间
    ，
     */
    public Date getAuditTime() {
        return this.auditTime;
    }

    /**
     * 设置 审批时间
     ，
     *
     * @param auditTime 审批时间
    ，
     */
    public void setAuditTime(Date auditTime) {
        this.auditTime = auditTime;
    }

    /**
     * 获得 关联单号
     ，
     *
     * @return 关联单号
    ，
     */
    public String getRefNo() {
        return this.refNo;
    }

    /**
     * 设置 关联单号
     ，
     *
     * @param refNo 关联单号
    ，
     */
    public void setRefNo(String refNo) {
        this.refNo = refNo;
    }

    /**
     * 获得 账单号
     ，
     *
     * @return 账单号
    ，
     */
    public String getBillNo() {
        return this.billNo;
    }

    /**
     * 设置 账单号
     ，
     *
     * @param billNo 账单号
    ，
     */
    public void setBillNo(String billNo) {
        this.billNo = billNo;
    }

    /**
     * 获得 备注
     ，
     *
     * @return 备注
    ，
     */
    public String getNote() {
        return this.note;
    }

    /**
     * 设置 备注
     ，
     *
     * @param note 备注
    ，
     */
    public void setNote(String note) {
        this.note = note;
    }

    /**
     * 获得 附件
     ，
     *
     * @return 附件
    ，
     */
    public String getAttachement() {
        return this.attachement;
    }

    /**
     * 设置 附件
     ，
     *
     * @param attachement 附件
    ，
     */
    public void setAttachement(String attachement) {
        this.attachement = attachement;
    }

    /**
     * 获得 状态:0存在,1已删除
     *
     * @return 状态:0存在,1已删除
     */
    public String getDf() {
        return this.df;
    }

    /**
     * 设置 状态:0存在,1已删除
     *
     * @param df 状态:0存在,1已删除
     */
    public void setDf(String df) {
        this.df = df;
    }

    /**
     * 获得 明细状态:0-失效/删除; 1-新增; 2- 已修改; 10-已审核; 20-已生成账单; 21-已确认；30 - 已开票; 50 - 已结款
     ，
     *
     * @return 明细状态:0-失效/删除; 1-新增; 2- 已修改; 10-已审核; 20-已生成账单; 21-已确认；30 - 已开票; 50 - 已结款
    ，
     */
    public Integer getStatus() {
        return this.status;
    }

    /**
     * 设置 明细状态:0-失效/删除; 1-新增; 2- 已修改; 10-已审核; 20-已生成账单; 21-已确认；30 - 已开票; 50 - 已结款
     ，
     *
     * @param status 明细状态:0-失效/删除; 1-新增; 2- 已修改; 10-已审核; 20-已生成账单; 21-已确认；30 - 已开票; 50 - 已结款
    ，
     */
    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getInout() {
        return inout;
    }

    public void setInout(String inout) {
        this.inout = inout;
    }

    //自定义汇率
    public BigDecimal getMyExchangeRate() {
        return myExchangeRate;
    }
    //自定义汇率
    public void setMyExchangeRate(BigDecimal myExchangeRate) {
        this.myExchangeRate = myExchangeRate;
    }

    /**交易单价*/
    public BigDecimal getUnitPrice() {
        return unitPrice;
    }

    /**交易单价*/
    public void setUnitPrice(BigDecimal unitPrice) {
        this.unitPrice = unitPrice;
    }

    public String getTradeUnit() {
        return tradeUnit;
    }

    public void setTradeUnit(String tradeUnit) {
        this.tradeUnit = tradeUnit;
    }

    public BigDecimal getCount() {
        return count;
    }

    public void setCount(BigDecimal count) {
        this.count = count;
    }

    public String getBusinessType() {
        return businessType;
    }

    public void setBusinessType(String businessType) {
        this.businessType = businessType;
    }

    public String getAccountCurrency() {
        return accountCurrency;
    }

    public void setAccountCurrency(String accountCurrency) {
        this.accountCurrency = accountCurrency;
    }

    public String getSettlementCurrency() {
        return settlementCurrency;
    }

    public void setSettlementCurrency(String settlementCurrency) {
        this.settlementCurrency = settlementCurrency;
    }

    public String getCategoryLevel1Name() {
        return categoryLevel1Name;
    }

    public void setCategoryLevel1Name(String categoryLevel1Name) {
        this.categoryLevel1Name = categoryLevel1Name;
    }

    public String getCategoryLevel2Name() {
        return categoryLevel2Name;
    }

    public void setCategoryLevel2Name(String categoryLevel2Name) {
        this.categoryLevel2Name = categoryLevel2Name;
    }

    public String getSettlementObjectName() {
        return settlementObjectName;
    }

    public void setSettlementObjectName(String settlementObjectName) {
        this.settlementObjectName = settlementObjectName;
    }

    public String getCurrency1() {
        return currency1;
    }

    public void setCurrency1(String currency1) {
        this.currency1 = currency1;
    }

    public String getCurrency2() {
        return currency2;
    }

    public void setCurrency2(String currency2) {
        this.currency2 = currency2;
    }

    public Date getTradeTimeEnd() {
        return tradeTimeEnd;
    }

    public void setTradeTimeEnd(Date tradeTimeEnd) {
        this.tradeTimeEnd = tradeTimeEnd;
    }

    public String getNotAudit() {
        return notAudit;
    }

    public void setNotAudit(String notAudit) {
        this.notAudit = notAudit;
    }

    public String getNotBill() {
        return notBill;
    }

    public void setNotBill(String notBill) {
        this.notBill = notBill;
    }

    public String getNotPaid() {
        return notPaid;
    }

    public void setNotPaid(String notPaid) {
        this.notPaid = notPaid;
    }

    public AmsAttachmentBean getAttachmentBean() {
        return attachmentBean;
    }

    public void setAttachmentBean(AmsAttachmentBean attachmentBean) {
        this.attachmentBean = attachmentBean;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public Integer getVcId() {
        return vcId;
    }

    public void setVcId(Integer vcId) {
        this.vcId = vcId;
    }
}
