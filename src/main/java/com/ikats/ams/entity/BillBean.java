package com.ikats.ams.entity;

import java.math.BigDecimal;
import java.util.Date;

public class BillBean implements java.io.Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;

    /** 明细编码， */
    private String billNo;

    /** 账套编码， */
    private String accountId;

    /** 收入支出:I-收入;O-支出，， */
    private String inout;

    /** 结算对象编码， */
    private String settlementObjectId;

    /** 结算类型:0-现结；1-月结，， */
    private String settleType;

    /** 合计收入， */
    private BigDecimal totalIncome;

    /** 合计支出， */
    private BigDecimal totalOutcome;

    /** 账单金额， */
    private BigDecimal amount;

    /** 账单币种， */
    private String currency;

    /** 账单时间， */
    private Date billTime;

    /** 明细状态:0-失效/删除; 1-新增; 10-已审核; 30 - 已开票; 50 - 已结款，， */
    private Integer status;

    /** 创建人， */
    private String creator;

    /** 创建时间， */
    private Date createTime;

    /** 创建时间，搜索冗余 */
    private Date createTimeEnd;

    /** 修改人， */
    private String modifiedBy;

    /** 修改时间， */
    private Date modifyTime;

    /** 审批人， */
    private String auditor;

    /** 审批时间， */
    private Date auditTime;

    /** 开票时间， */
    private Date invoiceTime;

    /** 支付时间， */
    private Date payTime;

    /** 备注， */
    private String note;

    /** 附件， */
    private String attachement;

    /** 组织id */
    private Integer orgId;

    /** 状态:0存在,1已删除 */
    private String df;

    private String invoiceNo;

    private String settlementObjectName;

    private String invoiceOtherNo;

    private String confirmAfter;

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 获得 明细编码，
     *
     * @return 明细编码，
     */
    public String getBillNo() {
        return this.billNo;
    }

    /**
     * 设置 明细编码，
     *
     * @param billNo 明细编码，
     */
    public void setBillNo(String billNo) {
        this.billNo = billNo;
    }

    /**
     * 获得 账套编码，
     *
     * @return 账套编码，
     */
    public String getAccountId() {
        return this.accountId;
    }

    /**
     * 设置 账套编码，
     *
     * @param accountId 账套编码，
     */
    public void setAccountId(String accountId) {
        this.accountId = accountId;
    }

    /**
     * 获得 收入支出:I-收入;O-支出，，
     *
     * @return 收入支出:I-收入;O-支出，，
     */
    public String getInout() {
        return this.inout;
    }

    /**
     * 设置 收入支出:I-收入;O-支出，，
     *
     * @param inout 收入支出:I-收入;O-支出，，
     */
    public void setInout(String inout) {
        this.inout = inout;
    }

    /**
     * 获得 结算对象编码，
     *
     * @return 结算对象编码，
     */
    public String getSettlementObjectId() {
        return this.settlementObjectId;
    }

    /**
     * 设置 结算对象编码，
     *
     * @param settlementObjectId 结算对象编码，
     */
    public void setSettlementObjectId(String settlementObjectId) {
        this.settlementObjectId = settlementObjectId;
    }

    /**
     * 获得 结算类型:0-现结；1-月结，，
     *
     * @return 结算类型:0-现结；1-月结，，
     */
    public String getSettleType() {
        return this.settleType;
    }

    /**
     * 设置 结算类型:0-现结；1-月结，，
     *
     * @param settleType 结算类型:0-现结；1-月结，，
     */
    public void setSettleType(String settleType) {
        this.settleType = settleType;
    }

    /**
     * 获得 合计收入，
     *
     * @return 合计收入，
     */
    public BigDecimal getTotalIncome() {
        return this.totalIncome;
    }

    /**
     * 设置 合计收入，
     *
     * @param totalIncome 合计收入，
     */
    public void setTotalIncome(BigDecimal totalIncome) {
        this.totalIncome = totalIncome;
    }

    /**
     * 获得 合计支出，
     *
     * @return 合计支出，
     */
    public BigDecimal getTotalOutcome() {
        return this.totalOutcome;
    }

    /**
     * 设置 合计支出，
     *
     * @param totalOutcome 合计支出，
     */
    public void setTotalOutcome(BigDecimal totalOutcome) {
        this.totalOutcome = totalOutcome;
    }

    /**
     * 获得 账单金额，
     *
     * @return 账单金额，
     */
    public BigDecimal getAmount() {
        return this.amount;
    }

    /**
     * 设置 账单金额，
     *
     * @param amount 账单金额，
     */
    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    /**
     * 获得 账单币种，
     *
     * @return 账单币种，
     */
    public String getCurrency() {
        return this.currency;
    }

    /**
     * 设置 账单币种，
     *
     * @param currency 账单币种，
     */
    public void setCurrency(String currency) {
        this.currency = currency;
    }

    /**
     * 获得 账单时间，
     *
     * @return 账单时间，
     */
    public Date getBillTime() {
        return this.billTime;
    }

    /**
     * 设置 账单时间，
     *
     * @param billTime 账单时间，
     */
    public void setBillTime(Date billTime) {
        this.billTime = billTime;
    }

    /**
     * 获得 明细状态:0-失效/删除; 1-新增; 10-已审核; 30 - 已开票; 50 - 已结款，，
     *
     * @return 明细状态:0-失效/删除; 1-新增; 10-已审核; 30 - 已开票; 50 - 已结款，，
     */
    public Integer getStatus() {
        return this.status;
    }

    /**
     * 设置 明细状态:0-失效/删除; 1-新增; 10-已审核; 30 - 已开票; 50 - 已结款，，
     *
     * @param status 明细状态:0-失效/删除; 1-新增; 10-已审核; 30 - 已开票; 50 - 已结款，，
     */
    public void setStatus(Integer status) {
        this.status = status;
    }

    /**
     * 获得 创建人，
     *
     * @return 创建人，
     */
    public String getCreator() {
        return this.creator;
    }

    /**
     * 设置 创建人，
     *
     * @param creator 创建人，
     */
    public void setCreator(String creator) {
        this.creator = creator;
    }

    /**
     * 获得 创建时间，
     *
     * @return 创建时间，
     */
    public Date getCreateTime() {
        return this.createTime;
    }

    /**
     * 设置 创建时间，
     *
     * @param createTime 创建时间，
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * 获得 修改人，
     *
     * @return 修改人，
     */
    public String getModifiedBy() {
        return this.modifiedBy;
    }

    /**
     * 设置 修改人，
     *
     * @param modifiedBy 修改人，
     */
    public void setModifiedBy(String modifiedBy) {
        this.modifiedBy = modifiedBy;
    }

    /**
     * 获得 修改时间，
     *
     * @return 修改时间，
     */
    public Date getModifyTime() {
        return this.modifyTime;
    }

    /**
     * 设置 修改时间，
     *
     * @param modifyTime 修改时间，
     */
    public void setModifyTime(Date modifyTime) {
        this.modifyTime = modifyTime;
    }

    /**
     * 获得 审批人，
     *
     * @return 审批人，
     */
    public String getAuditor() {
        return this.auditor;
    }

    /**
     * 设置 审批人，
     *
     * @param auditor 审批人，
     */
    public void setAuditor(String auditor) {
        this.auditor = auditor;
    }

    /**
     * 获得 审批时间，
     *
     * @return 审批时间，
     */
    public Date getAuditTime() {
        return this.auditTime;
    }

    /**
     * 设置 审批时间，
     *
     * @param auditTime 审批时间，
     */
    public void setAuditTime(Date auditTime) {
        this.auditTime = auditTime;
    }

    /**
     * 获得 开票时间，
     *
     * @return 开票时间，
     */
    public Date getInvoiceTime() {
        return this.invoiceTime;
    }

    /**
     * 设置 开票时间，
     *
     * @param invoiceTime 开票时间，
     */
    public void setInvoiceTime(Date invoiceTime) {
        this.invoiceTime = invoiceTime;
    }

    /**
     * 获得 支付时间，
     *
     * @return 支付时间，
     */
    public Date getPayTime() {
        return this.payTime;
    }

    /**
     * 设置 支付时间，
     *
     * @param payTime 支付时间，
     */
    public void setPayTime(Date payTime) {
        this.payTime = payTime;
    }

    /**
     * 获得 备注，
     *
     * @return 备注，
     */
    public String getNote() {
        return this.note;
    }

    /**
     * 设置 备注，
     *
     * @param note 备注，
     */
    public void setNote(String note) {
        this.note = note;
    }

    /**
     * 获得 附件，
     *
     * @return 附件，
     */
    public String getAttachement() {
        return this.attachement;
    }

    /**
     * 设置 附件，
     *
     * @param attachement 附件，
     */
    public void setAttachement(String attachement) {
        this.attachement = attachement;
    }

    /**
     * 获得 组织id
     *
     * @return 组织id
     */
    public Integer getOrgId() {
        return this.orgId;
    }

    /**
     * 设置 组织id
     *
     * @param orgId 组织id
     */
    public void setOrgId(Integer orgId) {
        this.orgId = orgId;
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

    public String getInvoiceNo() {
        return invoiceNo;
    }

    public void setInvoiceNo(String invoiceNo) {
        this.invoiceNo = invoiceNo;
    }

    public String getSettlementObjectName() {
        return settlementObjectName;
    }

    public void setSettlementObjectName(String settlementObjectName) {
        this.settlementObjectName = settlementObjectName;
    }

    public Date getCreateTimeEnd() {
        return createTimeEnd;
    }

    public void setCreateTimeEnd(Date createTimeEnd) {
        this.createTimeEnd = createTimeEnd;
    }

    public String getInvoiceOtherNo() {
        return invoiceOtherNo;
    }

    public void setInvoiceOtherNo(String invoiceOtherNo) {
        this.invoiceOtherNo = invoiceOtherNo;
    }

    public String getConfirmAfter() {
        return confirmAfter;
    }

    public void setConfirmAfter(String confirmAfter) {
        this.confirmAfter = confirmAfter;
    }
}