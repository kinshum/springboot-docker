package com.ikats.ams.entity;

import java.io.Serializable;
import java.util.Date;


public class DistributionBean implements Serializable{
    private static final long serialVersionUID = 1L;

    /** 主键id */
    private Integer id;

    /** 分销商编码 */
    private String orgId;

    /** 渠道编码 */
    private String distributionId;

    /** 分销商中文名 */
    private String distributionCname;

    /** 分销商英文名 */
    private String distributionEname;

    /** 主要采购来源国 */
    private String productCountry;

    /** 主要采购类目 */
    private String productCategories;

    /** 主要品牌 */
    private String productBrands;

    /** 分销渠道类型 */
    private String channelType;

    /** 支持贸易方式 */
    private String tradeMethods;

    /** 采购业务联系人 */
    private String contactPerson;

    /** 联系人电话 */
    private String contactPhone;

    /** 联系人地址 */
    private String contactAddress;

    /** 国家编码 */
    private String contactCountry;

    /** 邮编 */
    private String contactPostcode;

    /** 网址/线上系统网址 */
    private String weburl;

    /** 创建人 */
    private String creator;

    /** 创建时间 */
    private Date createTime;

    /** 服务 */
    private String serviceId;

    /** 删除状态 */
    private String df;

    private String orgCode;

    /**
     * 获得 主键id
     *
     * @return 主键id
     */
    public Integer getId() {
        return this.id;
    }

    /**
     * 设置 主键id
     *
     * @param id 主键id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获得 分销商编码
     *
     * @return 分销商编码
     */
    public String getOrgId() {
        return this.orgId;
    }

    /**
     * 设置 分销商编码
     *
     * @param orgId 分销商编码
     */
    public void setOrgId(String orgId) {
        this.orgId = orgId;
    }

    /**
     * 获得 渠道编码
     *
     * @return 渠道编码
     */
    public String getDistributionId() {
        return this.distributionId;
    }

    /**
     * 设置 渠道编码
     *
     * @param distributionId 渠道编码
     */
    public void setDistributionId(String distributionId) {
        this.distributionId = distributionId;
    }

    /**
     * 获得 分销商中文名
     *
     * @return 分销商中文名
     */
    public String getDistributionCname() {
        return this.distributionCname;
    }

    /**
     * 设置 分销商中文名
     *
     * @param distributionCname 分销商中文名
     */
    public void setDistributionCname(String distributionCname) {
        this.distributionCname = distributionCname;
    }

    /**
     * 获得 分销商英文名
     *
     * @return 分销商英文名
     */
    public String getDistributionEname() {
        return this.distributionEname;
    }

    /**
     * 设置 分销商英文名
     *
     * @param distributionEname 分销商英文名
     */
    public void setDistributionEname(String distributionEname) {
        this.distributionEname = distributionEname;
    }

    /**
     * 获得 主要采购来源国
     *
     * @return 主要采购来源国
     */
    public String getProductCountry() {
        return this.productCountry;
    }

    /**
     * 设置 主要采购来源国
     *
     * @param productCountry 主要采购来源国
     */
    public void setProductCountry(String productCountry) {
        this.productCountry = productCountry;
    }

    /**
     * 获得 主要采购类目
     *
     * @return 主要采购类目
     */
    public String getProductCategories() {
        return this.productCategories;
    }

    /**
     * 设置 主要采购类目
     *
     * @param productCategories 主要采购类目
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
     * 获得 分销渠道类型
     *
     * @return 分销渠道类型
     */
    public String getChannelType() {
        return this.channelType;
    }

    /**
     * 设置 分销渠道类型
     *
     * @param channelType 分销渠道类型
     */
    public void setChannelType(String channelType) {
        this.channelType = channelType;
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
     * 获得 采购业务联系人
     *
     * @return 采购业务联系人
     */
    public String getContactPerson() {
        return this.contactPerson;
    }

    /**
     * 设置 采购业务联系人
     *
     * @param contactPerson 采购业务联系人
     */
    public void setContactPerson(String contactPerson) {
        this.contactPerson = contactPerson;
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
     * 获得 国家编码
     *
     * @return 国家编码
     */
    public String getContactCountry() {
        return this.contactCountry;
    }

    /**
     * 设置 国家编码
     *
     * @param contactCountry 国家编码
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
     * 获得 网址/线上系统网址
     *
     * @return 网址/线上系统网址
     */
    public String getWeburl() {
        return this.weburl;
    }

    /**
     * 设置 网址/线上系统网址
     *
     * @param weburl 网址/线上系统网址
     */
    public void setWeburl(String weburl) {
        this.weburl = weburl;
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
     * 获得 服务
     *
     * @return 服务
     */
    public String getServiceId() {
        return this.serviceId;
    }

    /**
     * 设置 服务
     *
     * @param serviceId 服务
     */
    public void setServiceId(String serviceId) {
        this.serviceId = serviceId;
    }

    /**
     * 获得 删除状态
     *
     * @return 删除状态
     */
    public String getDf() {
        return this.df;
    }

    /**
     * 设置 删除状态
     *
     * @param df 删除状态
     */
    public void setDf(String df) {
        this.df = df;
    }

    public String getOrgCode() {
        return orgCode;
    }

    public void setOrgCode(String orgCode) {
        this.orgCode = orgCode;
    }
}
