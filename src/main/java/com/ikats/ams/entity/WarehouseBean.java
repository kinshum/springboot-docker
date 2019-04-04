package com.ikats.ams.entity;

public class WarehouseBean implements java.io.Serializable {

    private static final long serialVersionUID = 1L;

    /** 主键id */
    private Integer id;

    /** 公司编码 */
    private String orgId;

    /** 仓库编码 */
    private String stockId;

    /** 仓库名称 */
    private String stockName;

    /** 所在国家 */
    private String country;

    /** 所在州、省 */
    private String province;

    /** 所在市 */
    private String city;

    /** 所在县 */
    private String county;

    /** 联系人 */
    private String contactPerson;

    /** 联系电话 */
    private String contactPhone;

    /** 仓库类型 */
    private String warehouseType;

    /** 管理仓 */
    private String managedWarehouse;

    /** 日历类型 */
    private String calendarType;

    /** 服务 */
    private String serviceId;

    private String df;

    private String orgCode;

    //modify 0904
    private String serviceBaseUrl;

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
     * 获得 公司编码
     *
     * @return 公司编码
     */
    public String getOrgId() {
        return this.orgId;
    }

    /**
     * 设置 公司编码
     *
     * @param orgId 公司编码
     */
    public void setOrgId(String orgId) {
        this.orgId = orgId;
    }

    /**
     * 获得 仓库编码
     *
     * @return 仓库编码
     */
    public String getStockId() {
        return this.stockId;
    }

    /**
     * 设置 仓库编码
     *
     * @param stockId 仓库编码
     */
    public void setStockId(String stockId) {
        this.stockId = stockId;
    }

    /**
     * 获得 仓库名称
     *
     * @return 仓库名称
     */
    public String getStockName() {
        return this.stockName;
    }

    /**
     * 设置 仓库名称
     *
     * @param stockName 仓库名称
     */
    public void setStockName(String stockName) {
        this.stockName = stockName;
    }

    /**
     * 获得 所在国家
     *
     * @return 所在国家
     */
    public String getCountry() {
        return this.country;
    }

    /**
     * 设置 所在国家
     *
     * @param country 所在国家
     */
    public void setCountry(String country) {
        this.country = country;
    }

    /**
     * 获得 所在州、省
     *
     * @return 所在州、省
     */
    public String getProvince() {
        return this.province;
    }

    /**
     * 设置 所在州、省
     *
     * @param province 所在州、省
     */
    public void setProvince(String province) {
        this.province = province;
    }

    /**
     * 获得 所在市
     *
     * @return 所在市
     */
    public String getCity() {
        return this.city;
    }

    /**
     * 设置 所在市
     *
     * @param city 所在市
     */
    public void setCity(String city) {
        this.city = city;
    }

    /**
     * 获得 所在县
     *
     * @return 所在县
     */
    public String getCounty() {
        return this.county;
    }

    /**
     * 设置 所在县
     *
     * @param county 所在县
     */
    public void setCounty(String county) {
        this.county = county;
    }

    /**
     * 获得 联系人
     *
     * @return 联系人
     */
    public String getContactPerson() {
        return this.contactPerson;
    }

    /**
     * 设置 联系人
     *
     * @param contactPerson 联系人
     */
    public void setContactPerson(String contactPerson) {
        this.contactPerson = contactPerson;
    }

    /**
     * 获得 联系电话
     *
     * @return 联系电话
     */
    public String getContactPhone() {
        return this.contactPhone;
    }

    /**
     * 设置 联系电话
     *
     * @param contactPhone 联系电话
     */
    public void setContactPhone(String contactPhone) {
        this.contactPhone = contactPhone;
    }

    /**
     * 获得 仓库类型
     *
     * @return 仓库类型
     */
    public String getWarehouseType() {
        return this.warehouseType;
    }

    /**
     * 设置 仓库类型
     *
     * @param warehouseType 仓库类型
     */
    public void setWarehouseType(String warehouseType) {
        this.warehouseType = warehouseType;
    }

    /**
     * 获得 管理仓
     *
     * @return 管理仓
     */
    public String getManagedWarehouse() {
        return this.managedWarehouse;
    }

    /**
     * 设置 管理仓
     *
     * @param managedWarehouse 管理仓
     */
    public void setManagedWarehouse(String managedWarehouse) {
        this.managedWarehouse = managedWarehouse;
    }

    /**
     * 获得 日历类型
     *
     * @return 日历类型
     */
    public String getCalendarType() {
        return this.calendarType;
    }

    /**
     * 设置 日历类型
     *
     * @param calendarType 日历类型
     */
    public void setCalendarType(String calendarType) {
        this.calendarType = calendarType;
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

    public String getDf() {
        return this.df;
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

    public String getServiceBaseUrl() {
        return serviceBaseUrl;
    }

    public void setServiceBaseUrl(String serviceBaseUrl) {
        this.serviceBaseUrl = serviceBaseUrl;
    }
}