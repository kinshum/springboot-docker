package com.ikats.ams.entity;

public class SettlementObjectBean implements java.io.Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;

    /** 账套编码
     ， */
    private String accountId;

    /** 结算对象ID:自定义结算对象编码，全局唯一
     ，
     ， */
    private String settlementObjectId;

    /** 结算对象组织编码:四位组织编码
     ，
     ， */
    private String orgCode;

    /** 结算对象中文名
     ， */
    private String orgCname;

    /** 英文名
     ， */
    private String orgEname;

    /** 简称
     ， */
    private String orgShortname;

    /** 所在国
     ， */
    private String country;

    /** 结算币种:三位货币编码
     ， */
    private String currency;

    /** 公司地址
     ， */
    private String address;

    /** 联系人
     ， */
    private String contactPerson;

    /** 联系人电话
     ， */
    private String contactPhone;

    /** 银行账号
     ， */
    private String bankAccount;

    /** 银行名称
     ， */
    private String bankName;

    /** 银行地址
     ， */
    private String bankAddress;

    /** 结算方式 0-现结；1-月结
     ， */
    private String settleType;

    /** 状态:0存在,1已删除 */
    private String df;

    /**组织ID   */
    private Integer   orgId;

    public Integer getOrgId() {		return orgId;	}
    public void setOrgId(Integer orgId) {		this.orgId = orgId;	}

    public String getOrgCode() {		return orgCode;	}
    public void setOrgCode(String orgCode) {		this.orgCode = orgCode;	}

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
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
     * 获得 结算对象ID:自定义结算对象编码，全局唯一
     ，
     ，
     *
     * @return 结算对象ID:自定义结算对象编码，全局唯一
    ，
    ，
     */
    public String getSettlementObjectId() {
        return this.settlementObjectId;
    }

    /**
     * 设置 结算对象ID:自定义结算对象编码，全局唯一
     ，
     ，
     *
     * @param settlementObjectId 结算对象ID:自定义结算对象编码，全局唯一
    ，
    ，
     */
    public void setSettlementObjectId(String settlementObjectId) {
        this.settlementObjectId = settlementObjectId;
    }

    /**
     * 获得 结算对象中文名
     ，
     *
     * @return 结算对象中文名
    ，
     */
    public String getOrgCname() {
        return this.orgCname;
    }

    /**
     * 设置 结算对象中文名
     ，
     *
     * @param orgCname 结算对象中文名
    ，
     */
    public void setOrgCname(String orgCname) {
        this.orgCname = orgCname;
    }

    /**
     * 获得 英文名
     ，
     *
     * @return 英文名
    ，
     */
    public String getOrgEname() {
        return this.orgEname;
    }

    /**
     * 设置 英文名
     ，
     *
     * @param orgEname 英文名
    ，
     */
    public void setOrgEname(String orgEname) {
        this.orgEname = orgEname;
    }

    /**
     * 获得 简称
     ，
     *
     * @return 简称
    ，
     */
    public String getOrgShortname() {
        return this.orgShortname;
    }

    /**
     * 设置 简称
     ，
     *
     * @param orgShortname 简称
    ，
     */
    public void setOrgShortname(String orgShortname) {
        this.orgShortname = orgShortname;
    }

    /**
     * 获得 所在国
     ，
     *
     * @return 所在国
    ，
     */
    public String getCountry() {
        return this.country;
    }

    /**
     * 设置 所在国
     ，
     *
     * @param country 所在国
    ，
     */
    public void setCountry(String country) {
        this.country = country;
    }

    /**
     * 获得 结算币种:三位货币编码
     ，
     *
     * @return 结算币种:三位货币编码
    ，
     */
    public String getCurrency() {
        return this.currency;
    }

    /**
     * 设置 结算币种:三位货币编码
     ，
     *
     * @param currency 结算币种:三位货币编码
    ，
     */
    public void setCurrency(String currency) {
        this.currency = currency;
    }

    /**
     * 获得 公司地址
     ，
     *
     * @return 公司地址
    ，
     */
    public String getAddress() {
        return this.address;
    }

    /**
     * 设置 公司地址
     ，
     *
     * @param address 公司地址
    ，
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * 获得 联系人
     ，
     *
     * @return 联系人
    ，
     */
    public String getContactPerson() {
        return this.contactPerson;
    }

    /**
     * 设置 联系人
     ，
     *
     * @param contactPerson 联系人
    ，
     */
    public void setContactPerson(String contactPerson) {
        this.contactPerson = contactPerson;
    }

    /**
     * 获得 联系人电话
     ，
     *
     * @return 联系人电话
    ，
     */
    public String getContactPhone() {
        return this.contactPhone;
    }

    /**
     * 设置 联系人电话
     ，
     *
     * @param contactPhone 联系人电话
    ，
     */
    public void setContactPhone(String contactPhone) {
        this.contactPhone = contactPhone;
    }

    /**
     * 获得 银行账号
     ，
     *
     * @return 银行账号
    ，
     */
    public String getBankAccount() {
        return this.bankAccount;
    }

    /**
     * 设置 银行账号
     ，
     *
     * @param bankAccount 银行账号
    ，
     */
    public void setBankAccount(String bankAccount) {
        this.bankAccount = bankAccount;
    }

    /**
     * 获得 银行名称
     ，
     *
     * @return 银行名称
    ，
     */
    public String getBankName() {
        return this.bankName;
    }

    /**
     * 设置 银行名称
     ，
     *
     * @param bankName 银行名称
    ，
     */
    public void setBankName(String bankName) {
        this.bankName = bankName;
    }

    /**
     * 获得 银行地址
     ，
     *
     * @return 银行地址
    ，
     */
    public String getBankAddress() {
        return this.bankAddress;
    }

    /**
     * 设置 银行地址
     ，
     *
     * @param bankAddress 银行地址
    ，
     */
    public void setBankAddress(String bankAddress) {
        this.bankAddress = bankAddress;
    }

    /**
     * 获得 结算方式 0-现结；1-月结
     ，
     *
     * @return 结算方式 0-现结；1-月结
    ，
     */
    public String getSettleType() {
        return this.settleType;
    }

    /**
     * 设置 结算方式 0-现结；1-月结
     ，
     *
     * @param settleType 结算方式 0-现结；1-月结
    ，
     */
    public void setSettleType(String settleType) {
        this.settleType = settleType;
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

}