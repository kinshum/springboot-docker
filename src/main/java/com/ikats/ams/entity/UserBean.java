package com.ikats.ams.entity;

import java.io.Serializable;
import java.util.Date;

public class UserBean implements Serializable
{
	private static final long serialVersionUID = 1L;

	private Long id;

	private String userEName;

	private String userName;

	private String password;

	private String userCName;

	private String phone;

	private String email;

	/** 最后登录时间 */
	private Date loginTime;

	private Date createTime;

	private String status;
	//证件类型
	private String userIdentityType;
	//证件号
	private String userIdentityCardNo;
	//所在地
	private String userLocation;

	private String idPicFront;

	private String idPicBehind;

	private Integer organizationId;

	private Integer defaultLogisticsId;
	/***/
	//微信
	private String userWxid;
	//所属部门
	private String department;
	//从事业务类型
	private String managedBusiness;
	//用户级别
	private String userLevel;
	//重试次数
	private Integer retryTime;
	//创建人
	private String creator;
	//用户状态
	private String userStatus;

	private String lastName;
	private String firstName;
	//组织4位编码
	private String orgCode;

	private String LoTime;

	private Integer OrganId;

	private Integer df;

	//供应商编码
	private String supplyVendor;

	public Integer getDf() {
		return df;
	}

	public void setDf(Integer df) {
		this.df = df;
	}

	public String getOrgCode() {		return orgCode;	}
	public void setOrgCode(String orgCode) {		this.orgCode = orgCode;	}

	public String getLastName() {		return lastName;	}
	public void setLastName(String lastName) {		this.lastName = lastName;	}

	public String getFirstName() {		return firstName;	}
	public void setFirstName(String firstName) {	this.firstName = firstName;	}

	public String getUserWxid() {
		return userWxid;
	}

	public Integer getOrganId() {
		return OrganId;
	}

	public void setOrganId(Integer organId) {
		OrganId = organId;
	}

	public void setUserWxid(String userWxid) {
		this.userWxid = userWxid;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getManagedBusiness() {
		return managedBusiness;
	}

	public void setManagedBusiness(String managedBusiness) {
		this.managedBusiness = managedBusiness;
	}

	public String getUserLevel() {
		return userLevel;
	}

	public void setUserLevel(String userLevel) {
		this.userLevel = userLevel;
	}

	public Integer getRetryTime() {
		return retryTime;
	}

	public void setRetryTime(Integer retryTime) {
		this.retryTime = retryTime;
	}

	public String getCreator() {
		return creator;
	}

	public void setCreator(String creator) {
		this.creator = creator;
	}

	public String getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(String userStatus) {
		this.userStatus = userStatus;
	}

	/***/
	public Integer getDefaultLogisticsId() {
		return defaultLogisticsId;
	}

	public void setDefaultLogisticsId(Integer defaultLogisticsId) {
		this.defaultLogisticsId = defaultLogisticsId;
	}

	public Integer getOrganizationId() {
		return organizationId;
	}

	public void setOrganizationId(Integer organizationId) {
		this.organizationId = organizationId;
	}

	public String getIdPicFront() {
		return idPicFront;
	}

	public void setIdPicFront(String idPicFront) {
		this.idPicFront = idPicFront;
	}

	public String getIdPicBehind() {
		return idPicBehind;
	}

	public void setIdPicBehind(String idPicBehind) {
		this.idPicBehind = idPicBehind;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUserEName() {
		return userEName;
	}

	public void setUserEName(String userEName) {
		this.userEName = userEName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserCName() {
		return userCName;
	}

	public void setUserCName(String userCName) {
		this.userCName = userCName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getLoginTime() {
		return loginTime;
	}

	public void setLoginTime(Date loginTime) {
		this.loginTime = loginTime;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getUserIdentityType() {
		return userIdentityType;
	}

	public void setUserIdentityType(String userIdentityType) {
		this.userIdentityType = userIdentityType;
	}

	public String getUserIdentityCardNo() {
		return userIdentityCardNo;
	}

	public void setUserIdentityCardNo(String userIdentityCardNo) {
		this.userIdentityCardNo = userIdentityCardNo;
	}

	public String getUserLocation() {
		return userLocation;
	}

	public void setUserLocation(String userLocation) {
		this.userLocation = userLocation;
	}

	public String getLoTime() {
		return LoTime;
	}

	public void setLoTime(String loTime) {
		LoTime = loTime;
	}

	public String getSupplyVendor() {
		return supplyVendor;
	}

	public void setSupplyVendor(String supplyVendor) {
		this.supplyVendor = supplyVendor;
	}
}