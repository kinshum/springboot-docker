package com.ikats.ams.entity;

import java.io.Serializable;
import java.util.Date;


public class PurchaserBean implements Serializable{
    private static final long serialVersionUID = 1L;

    /** 主键id */
    private Integer id;

    /** 组织编码 */
    private String orgId;

    /** 采购商编码 */
    private String purchaserId;

    /** 采购组织中文名 */
    private String orgCname;

    /** 采购组织英文名 */
    private String orgEname;

    /** 主要采购来源国 */
    private String productCountry;

    /** 主要采购类目 */
    private String productCategories;

    /** 主要品牌 */
    private String productBrands;

    /** 主要采购渠道 */
    private String channels;

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
     * 获得 组织编码
     *
     * @return 组织编码
     */
    public String getOrgId() {
        return this.orgId;
    }

    /**
     * 设置 组织编码
     *
     * @param orgId 组织编码
     */
    public void setOrgId(String orgId) {
        this.orgId = orgId;
    }

    /**
     * 获得 采购商编码
     *
     * @return 采购商编码
     */
    public String getPurchaserId() {
        return this.purchaserId;
    }

    /**
     * 设置 采购商编码
     *
     * @param purchaserId 采购商编码
     */
    public void setPurchaserId(String purchaserId) {
        this.purchaserId = purchaserId;
    }

    /**
     * 获得 采购组织中文名
     *
     * @return 采购组织中文名
     */
    public String getOrgCname() {
        return this.orgCname;
    }

    /**
     * 设置 采购组织中文名
     *
     * @param orgCname 采购组织中文名
     */
    public void setOrgCname(String orgCname) {
        this.orgCname = orgCname;
    }

    /**
     * 获得 采购组织英文名
     *
     * @return 采购组织英文名
     */
    public String getOrgEname() {
        return this.orgEname;
    }

    /**
     * 设置 采购组织英文名
     *
     * @param orgEname 采购组织英文名
     */
    public void setOrgEname(String orgEname) {
        this.orgEname = orgEname;
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
     * 获得 主要采购渠道
     *
     * @return 主要采购渠道
     */
    public String getChannels() {
        return this.channels;
    }

    /**
     * 设置 主要采购渠道
     *
     * @param channels 主要采购渠道
     */
    public void setChannels(String channels) {
        this.channels = channels;
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
