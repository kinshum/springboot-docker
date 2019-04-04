package com.ikats.ams.entity;

import java.io.Serializable;
import java.util.Date;

public class ServiceBean implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;

    /** 组织id */
    private Integer orgId;

    /** 服务id */
    private Integer serviceId;

    /** 中文名 */
    private String serviceCname;

    /** 英文名 */
    private String serviceEname;

    /** Admin */
    private String admin;

    /** 服务类型 */
    private String serviceType;

    /** 创建人 */
    private String creator;

    /** 创建时间 */
    private Date createTime;

    /** 删除状态 */
    private String df;

    /** 组织四位编码 */
    private String orgCode;

    private String  selfId;

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
     * 获得 服务id
     *
     * @return 服务id
     */
    public Integer getServiceId() {
        return this.serviceId;
    }

    /**
     * 设置 服务id
     *
     * @param serviceId 服务id
     */
    public void setServiceId(Integer serviceId) {
        this.serviceId = serviceId;
    }

    /**
     * 获得 中文名
     *
     * @return 中文名
     */
    public String getServiceCname() {
        return this.serviceCname;
    }

    /**
     * 设置 中文名
     *
     * @param serviceCname 中文名
     */
    public void setServiceCname(String serviceCname) {
        this.serviceCname = serviceCname;
    }

    /**
     * 获得 英文名
     *
     * @return 英文名
     */
    public String getServiceEname() {
        return this.serviceEname;
    }

    /**
     * 设置 英文名
     *
     * @param serviceEname 英文名
     */
    public void setServiceEname(String serviceEname) {
        this.serviceEname = serviceEname;
    }

    /**
     * 获得 Admin
     *
     * @return Admin
     */
    public String getAdmin() {
        return this.admin;
    }

    /**
     * 设置 Admin
     *
     * @param admin Admin
     */
    public void setAdmin(String admin) {
        this.admin = admin;
    }

    /**
     * 获得 服务类型
     *
     * @return 服务类型
     */
    public String getServiceType() {
        return this.serviceType;
    }

    /**
     * 设置 服务类型
     *
     * @param serviceType 服务类型
     */
    public void setServiceType(String serviceType) {
        this.serviceType = serviceType;
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


    public String getDf() {
        return df;
    }

    public void setDf(String df) {
        this.df = df;
    }

    public String getOrgCode() {
        return orgCode;
    }

    public void setOrgCode(String orgCode) {
        this.orgCode = orgCode;
    }

    public String getSelfId() {
        return selfId;
    }

    public void setSelfId(String selfId) {
        this.selfId = selfId;
    }
}
