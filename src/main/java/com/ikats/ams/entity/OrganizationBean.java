package com.ikats.ams.entity;

import java.io.Serializable;
import java.util.Date;

public class OrganizationBean implements Serializable{


    private static final long serialVersionUID = 7194388091160523863L;
    private Integer id;
    private String name;
    private String status;
    private Integer pid;//父级id
    private String paymentType;
    private String abbr;
    private String country;
    private String province;
    private String city;
    private String county;
    private String address;
    private String contactPerson;
    private String postCode;
    private String businessType;
    private String businessScope;
    private String companyType;
    private String orgId;
    private UserBean userList;
    /***/
    //组织英文名
    private String orgEname;
    //组织简称
    private String orgBriefName;
    //联系人电话
    private String contactPhone;
    //联系人邮编
    private String personageCode;
    //组织类型
    private String orgType;
    //创建人
    private Integer creator;
    //创建时间
    private Date createTime;
    //部门
    private String department;
    //固定电话
    private String fixedPhone;
    //邮箱
    private String email;
    //电话
    private Integer phone;

    //代表是父级组织，供应商，或者用户
    private   String state;

    //是否生成账套
    private boolean bool;

    private String appId;

    private String authCode;

    private String clientId;

    private String channelId;

    public String getAppId() {
        return appId;
    }

    public void setAppId(String appId) {
        this.appId = appId;
    }

    public String getAuthCode() {
        return authCode;
    }

    public void setAuthCode(String authCode) {
        this.authCode = authCode;
    }

    public String getClientId() {
        return clientId;
    }

    public void setClientId(String clientId) {
        this.clientId = clientId;
    }

    public String getChannelId() {
        return channelId;
    }

    public void setChannelId(String channelId) {
        this.channelId = channelId;
    }

    public String getState() {        return state;    }
    public void setState(String state) {        this.state = state;    }

    public String getDepartment() {        return department;    }
    public void setDepartment(String department) {        this.department = department;    }

    public String getFixedPhone() {        return fixedPhone;    }
    public void setFixedPhone(String fixedPhone) {        this.fixedPhone = fixedPhone;    }

    public String getEmail() {        return email;    }
    public void setEmail(String email) {        this.email = email;    }

    public Integer getPhone() {        return phone;    }
    public void setPhone(Integer phone) {        this.phone = phone;    }

    public String getOrgEname() {        return orgEname;    }
    public void setOrgEname(String orgEname) {        this.orgEname = orgEname;    }

    public String getOrgBriefName() {        return orgBriefName;    }
    public void setOrgBriefName(String orgBriefName) {        this.orgBriefName = orgBriefName;    }

    public String getContactPhone() {        return contactPhone;    }
    public void setContactPhone(String contactPhone) {        this.contactPhone = contactPhone;    }

    public String getPersonageCode() {        return personageCode;    }
    public void setPersonageCode(String personageCode) {        this.personageCode = personageCode;    }

    public String getOrgType() {        return orgType;    }
    public void setOrgType(String orgType) {        this.orgType = orgType;    }

    public Integer getCreator() {        return creator;    }
    public void setCreator(Integer creator) {        this.creator = creator;    }

    public Date getCreateTime() {        return createTime;    }
    public void setCreateTime(Date createTime) {        this.createTime = createTime;    }

    public String getOrgId() {        return orgId;    }
    public void setOrgId(String orgId) {        this.orgId = orgId;    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(String paymentType) {
        this.paymentType = paymentType;
    }

    public String getAbbr() {
        return abbr;
    }

    public void setAbbr(String abbr) {
        this.abbr = abbr;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCounty() {
        return county;
    }

    public void setCounty(String county) {
        this.county = county;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getContactPerson() {
        return contactPerson;
    }

    public void setContactPerson(String contactPerson) {
        this.contactPerson = contactPerson;
    }

    public String getPostCode() {
        return postCode;
    }

    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }

    public String getBusinessType() {
        return businessType;
    }

    public void setBusinessType(String businessType) {
        this.businessType = businessType;
    }

    public String getBusinessScope() {
        return businessScope;
    }

    public void setBusinessScope(String businessScope) {
        this.businessScope = businessScope;
    }

    public String getCompanyType() {
        return companyType;
    }

    public void setCompanyType(String companyType) {
        this.companyType = companyType;
    }

    public UserBean getUserList() {
        return userList;
    }

    public void setUserList(UserBean userList) {
        this.userList = userList;
    }

    public boolean isBool() {
        return bool;
    }

    public void setBool(boolean bool) {
        this.bool = bool;
    }
}
