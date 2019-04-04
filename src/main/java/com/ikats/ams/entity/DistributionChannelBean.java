package com.ikats.ams.entity;

import java.util.Date;

public class DistributionChannelBean implements java.io.Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;

    /**
     * 组织id
     */
    private String orgId;

    /**
     * 组织四位编码
     */
    private String orgCode;

    /**
     * 分销渠道编码
     */
    private String channelId;

    /**
     * 分销渠道平台名
     */
    private String channelName;

    /**
     * 渠道类型 /自有平台、电商平台、微商、线下门店
     */
    private String channelType;

    /**
     * 主要分销类目
     */
    private String productCategories;

    /**
     * 主要品牌
     */
    private String productBrands;

    /**
     * 销售网站渠道
     */
    private String webAddress;

    /**
     * 支持贸易方式
     */
    private String tradeMethods;

    /**
     * 分销方式 /一件代发、批发
     */
    private String distributionMode;

    /**
     * 分销等级
     */
    private String distributionLevel;

    /**
     * 结算周期 /月、双周、周、日、现结
     */
    private String settlementPeriod;

    /**
     * 联系人电话
     */
    private String contactPhone;

    /**
     * 联系人地址
     */
    private String contactAddress;

    /**
     * 国家 /三位国家编码
     */
    private String contactCountry;

    /**
     * 邮编
     */
    private String contactPostcode;

    /**
     * 创建人
     */
    private String creator;

    private String serviceId;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 协议开始时间
     */
    private Date contractStart;

    /**
     * 协议终止时间
     */
    private Date contractEnd;

    /** 删除状态 */
    private String df;

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 获得 组织id
     *
     * @return 组织id
     */
    public String getOrgId() {
        return this.orgId;
    }

    /**
     * 设置 组织id
     *
     * @param orgId 组织id
     */
    public void setOrgId(String orgId) {
        this.orgId = orgId;
    }

    /**
     * 获得 组织四位编码
     *
     * @return 组织四位编码
     */
    public String getOrgCode() {
        return this.orgCode;
    }

    /**
     * 设置 组织四位编码
     *
     * @param orgCode 组织四位编码
     */
    public void setOrgCode(String orgCode) {
        this.orgCode = orgCode;
    }

    /**
     * 获得 分销渠道编码
     *
     * @return 分销渠道编码
     */
    public String getChannelId() {
        return this.channelId;
    }

    /**
     * 设置 分销渠道编码
     *
     * @param channelId 分销渠道编码
     */
    public void setChannelId(String channelId) {
        this.channelId = channelId;
    }

    /**
     * 获得 分销渠道平台名
     *
     * @return 分销渠道平台名
     */
    public String getChannelName() {
        return this.channelName;
    }

    /**
     * 设置 分销渠道平台名
     *
     * @param channelName 分销渠道平台名
     */
    public void setChannelName(String channelName) {
        this.channelName = channelName;
    }

    /**
     * 获得 渠道类型 /自有平台、电商平台、微商、线下门店
     *
     * @return 渠道类型 /自有平台、电商平台、微商、线下门店
     */
    public String getChannelType() {
        return this.channelType;
    }

    /**
     * 设置 渠道类型 /自有平台、电商平台、微商、线下门店
     *
     * @param channelType 渠道类型 /自有平台、电商平台、微商、线下门店
     */
    public void setChannelType(String channelType) {
        this.channelType = channelType;
    }

    /**
     * 获得 主要分销类目
     *
     * @return 主要分销类目
     */
    public String getProductCategories() {
        return this.productCategories;
    }

    /**
     * 设置 主要分销类目
     *
     * @param productCategories 主要分销类目
     */
    public void setProductCategories(String productCategories) {
        this.productCategories = productCategories;
    }

    /**
     * 获得 主要品牌
     *
     * @return 主要品牌
     */
    public String getProductBrands() {
        return this.productBrands;
    }

    /**
     * 设置 主要品牌
     *
     * @param productBrands 主要品牌
     */
    public void setProductBrands(String productBrands) {
        this.productBrands = productBrands;
    }

    /**
     * 获得 销售网站渠道
     *
     * @return 销售网站渠道
     */
    public String getWebAddress() {
        return this.webAddress;
    }

    /**
     * 设置 销售网站渠道
     *
     * @param webAddress 销售网站渠道
     */
    public void setWebAddress(String webAddress) {
        this.webAddress = webAddress;
    }

    /**
     * 获得 支持贸易方式
     *
     * @return 支持贸易方式
     */
    public String getTradeMethods() {
        return this.tradeMethods;
    }

    /**
     * 设置 支持贸易方式
     *
     * @param tradeMethods 支持贸易方式
     */
    public void setTradeMethods(String tradeMethods) {
        this.tradeMethods = tradeMethods;
    }

    /**
     * 获得 分销方式 /一件代发、批发
     *
     * @return 分销方式 /一件代发、批发
     */
    public String getDistributionMode() {
        return this.distributionMode;
    }

    /**
     * 设置 分销方式 /一件代发、批发
     *
     * @param distributionMode 分销方式 /一件代发、批发
     */
    public void setDistributionMode(String distributionMode) {
        this.distributionMode = distributionMode;
    }

    /**
     * 获得 分销等级
     *
     * @return 分销等级
     */
    public String getDistributionLevel() {
        return this.distributionLevel;
    }

    /**
     * 设置 分销等级
     *
     * @param distributionLevel 分销等级
     */
    public void setDistributionLevel(String distributionLevel) {
        this.distributionLevel = distributionLevel;
    }

    /**
     * 获得 结算周期 /月、双周、周、日、现结
     *
     * @return 结算周期 /月、双周、周、日、现结
     */
    public String getSettlementPeriod() {
        return this.settlementPeriod;
    }

    /**
     * 设置 结算周期 /月、双周、周、日、现结
     *
     * @param settlementPeriod 结算周期 /月、双周、周、日、现结
     */
    public void setSettlementPeriod(String settlementPeriod) {
        this.settlementPeriod = settlementPeriod;
    }

    /**
     * 获得 联系人电话
     *
     * @return 联系人电话
     */
    public String getContactPhone() {
        return this.contactPhone;
    }

    /**
     * 设置 联系人电话
     *
     * @param contactPhone 联系人电话
     */
    public void setContactPhone(String contactPhone) {
        this.contactPhone = contactPhone;
    }

    /**
     * 获得 联系人地址
     *
     * @return 联系人地址
     */
    public String getContactAddress() {
        return this.contactAddress;
    }

    /**
     * 设置 联系人地址
     *
     * @param contactAddress 联系人地址
     */
    public void setContactAddress(String contactAddress) {
        this.contactAddress = contactAddress;
    }

    /**
     * 获得 国家 /三位国家编码
     *
     * @return 国家 /三位国家编码
     */
    public String getContactCountry() {
        return this.contactCountry;
    }

    /**
     * 设置 国家 /三位国家编码
     *
     * @param contactCountry 国家 /三位国家编码
     */
    public void setContactCountry(String contactCountry) {
        this.contactCountry = contactCountry;
    }

    /**
     * 获得 邮编
     *
     * @return 邮编
     */
    public String getContactPostcode() {
        return this.contactPostcode;
    }

    /**
     * 设置 邮编
     *
     * @param contactPostcode 邮编
     */
    public void setContactPostcode(String contactPostcode) {
        this.contactPostcode = contactPostcode;
    }

    /**
     * 获得 创建人
     *
     * @return 创建人
     */
    public String getCreator() {
        return this.creator;
    }

    /**
     * 设置 创建人
     *
     * @param creator 创建人
     */
    public void setCreator(String creator) {
        this.creator = creator;
    }

    public String getServiceId() {
        return this.serviceId;
    }

    public void setServiceId(String serviceId) {
        this.serviceId = serviceId;
    }

    /**
     * 获得 创建时间
     *
     * @return 创建时间
     */
    public Date getCreateTime() {
        return this.createTime;
    }

    /**
     * 设置 创建时间
     *
     * @param createTime 创建时间
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * 获得 协议开始时间
     *
     * @return 协议开始时间
     */
    public Date getContractStart() {
        return this.contractStart;
    }

    /**
     * 设置 协议开始时间
     *
     * @param contractStart 协议开始时间
     */
    public void setContractStart(Date contractStart) {
        this.contractStart = contractStart;
    }

    /**
     * 获得 协议终止时间
     *
     * @return 协议终止时间
     */
    public Date getContractEnd() {
        return this.contractEnd;
    }

    /**
     * 设置 协议终止时间
     *
     * @param contractEnd 协议终止时间
     */
    public void setContractEnd(Date contractEnd) {
        this.contractEnd = contractEnd;
    }

    public String getDf() {
        return df;
    }

    public void setDf(String df) {
        this.df = df;
    }
}