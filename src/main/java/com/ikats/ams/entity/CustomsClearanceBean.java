package com.ikats.ams.entity;


import java.io.Serializable;

public class CustomsClearanceBean implements Serializable
{
	private static final long serialVersionUID = 2450131359619002335L;

	/** 主键id */
	private Integer id;

	/** 公司编码 */
	private String orgId;

	/** 服务编码 */
	private String serviceId;

	/** ClearPort 海关编号 */
	private String clearPort;

	/** ClearPortName 海关名称 */
	private String clearPortName;

	/** 清关方式 */
	private String clearMethod;

	/** 关区编码 */
	private String clearPortId;

	/** 是否保税 0 : 不保税 ; 保税 */
	private String taxIncluded;

	/** 所在州、省 */
	private String province;

	/** 所在市 */
	private String city;

	/** 交单城市 */
	private String dispatchCity;

	/** 清关时效 */
	private String efficientDay;

	/** 联系人 */
	private String contactPerson;

	/** 联系电话 */
	private String contactPhone;

	/** 是否需要支付 0 需要支付 1 : 无需支付 */
	private String paymentRequired;

	/** 是否需要面单 0 : 无需; 1 :需要; */
	private String expressSheet;

	/** 清关代理 */
	private String clearAgent;

	/** 时效 */
	private String clearTime;

	/** 快递始发地 */
	private String deliverStartPoint;

	/** 组织的id */
	private Integer organizationId;

	/** 电商模式 0
	 ，包税 1
	 ，邮政 2
	 ，个人 3 */
	private String taxPayment;

	private String	df;

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
	 * 获得 服务编码
	 *
	 * @return 服务编码
	 */
	public String getServiceId() {
		return this.serviceId;
	}

	/**
	 * 设置 服务编码
	 *
	 * @param serviceId 服务编码
	 */
	public void setServiceId(String serviceId) {
		this.serviceId = serviceId;
	}

	/**
	 * 获得 ClearPort 海关编号
	 *
	 * @return ClearPort 海关编号
	 */
	public String getClearPort() {
		return this.clearPort;
	}

	/**
	 * 设置 ClearPort 海关编号
	 *
	 * @param clearPort ClearPort 海关编号
	 */
	public void setClearPort(String clearPort) {
		this.clearPort = clearPort;
	}

	/**
	 * 获得 ClearPortName 海关名称
	 *
	 * @return ClearPortName 海关名称
	 */
	public String getClearPortName() {
		return this.clearPortName;
	}

	/**
	 * 设置 ClearPortName 海关名称
	 *
	 * @param clearPortName ClearPortName 海关名称
	 */
	public void setClearPortName(String clearPortName) {
		this.clearPortName = clearPortName;
	}

	/**
	 * 获得 清关方式
	 *
	 * @return 清关方式
	 */
	public String getClearMethod() {
		return this.clearMethod;
	}

	/**
	 * 设置 清关方式
	 *
	 * @param clearMethod 清关方式
	 */
	public void setClearMethod(String clearMethod) {
		this.clearMethod = clearMethod;
	}

	/**
	 * 获得 关区编码
	 *
	 * @return 关区编码
	 */
	public String getClearPortId() {
		return this.clearPortId;
	}

	/**
	 * 设置 关区编码
	 *
	 * @param clearPortId 关区编码
	 */
	public void setClearPortId(String clearPortId) {
		this.clearPortId = clearPortId;
	}

	/**
	 * 获得 是否保税 0 : 不保税 ; 保税
	 *
	 * @return 是否保税 0 : 不保税 ; 保税
	 */
	public String getTaxIncluded() {
		return this.taxIncluded;
	}

	/**
	 * 设置 是否保税 0 : 不保税 ; 保税
	 *
	 * @param taxIncluded 是否保税 0 : 不保税 ; 保税
	 */
	public void setTaxIncluded(String taxIncluded) {
		this.taxIncluded = taxIncluded;
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
	 * 获得 交单城市
	 *
	 * @return 交单城市
	 */
	public String getDispatchCity() {
		return this.dispatchCity;
	}

	/**
	 * 设置 交单城市
	 *
	 * @param dispatchCity 交单城市
	 */
	public void setDispatchCity(String dispatchCity) {
		this.dispatchCity = dispatchCity;
	}

	/**
	 * 获得 清关时效
	 *
	 * @return 清关时效
	 */
	public String getEfficientDay() {
		return this.efficientDay;
	}

	/**
	 * 设置 清关时效
	 *
	 * @param efficientDay 清关时效
	 */
	public void setEfficientDay(String efficientDay) {
		this.efficientDay = efficientDay;
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
	 * 获得 是否需要支付 0 需要支付 1 : 无需支付
	 *
	 * @return 是否需要支付 0 需要支付 1 : 无需支付
	 */
	public String getPaymentRequired() {
		return this.paymentRequired;
	}

	/**
	 * 设置 是否需要支付 0 需要支付 1 : 无需支付
	 *
	 * @param paymentRequired 是否需要支付 0 需要支付 1 : 无需支付
	 */
	public void setPaymentRequired(String paymentRequired) {
		this.paymentRequired = paymentRequired;
	}

	/**
	 * 获得 是否需要面单 0 : 无需; 1 :需要;
	 *
	 * @return 是否需要面单 0 : 无需; 1 :需要;
	 */
	public String getExpressSheet() {
		return this.expressSheet;
	}

	/**
	 * 设置 是否需要面单 0 : 无需; 1 :需要;
	 *
	 * @param expressSheet 是否需要面单 0 : 无需; 1 :需要;
	 */
	public void setExpressSheet(String expressSheet) {
		this.expressSheet = expressSheet;
	}

	/**
	 * 获得 清关代理
	 *
	 * @return 清关代理
	 */
	public String getClearAgent() {
		return this.clearAgent;
	}

	/**
	 * 设置 清关代理
	 *
	 * @param clearAgent 清关代理
	 */
	public void setClearAgent(String clearAgent) {
		this.clearAgent = clearAgent;
	}

	/**
	 * 获得 时效
	 *
	 * @return 时效
	 */
	public String getClearTime() {
		return this.clearTime;
	}

	/**
	 * 设置 时效
	 *
	 * @param clearTime 时效
	 */
	public void setClearTime(String clearTime) {
		this.clearTime = clearTime;
	}

	/**
	 * 获得 快递始发地
	 *
	 * @return 快递始发地
	 */
	public String getDeliverStartPoint() {
		return this.deliverStartPoint;
	}

	/**
	 * 设置 快递始发地
	 *
	 * @param deliverStartPoint 快递始发地
	 */
	public void setDeliverStartPoint(String deliverStartPoint) {
		this.deliverStartPoint = deliverStartPoint;
	}

	/**
	 * 获得 组织的id
	 *
	 * @return 组织的id
	 */
	public Integer getOrganizationId() {
		return this.organizationId;
	}

	/**
	 * 设置 组织的id
	 *
	 * @param organizationId 组织的id
	 */
	public void setOrganizationId(Integer organizationId) {
		this.organizationId = organizationId;
	}

	/**
	 * 获得 电商模式 0
	 ，包税 1
	 ，邮政 2
	 ，个人 3
	 *
	 * @return 电商模式 0
	，包税 1
	，邮政 2
	，个人 3
	 */
	public String getTaxPayment() {
		return this.taxPayment;
	}

	/**
	 * 设置 电商模式 0
	 ，包税 1
	 ，邮政 2
	 ，个人 3
	 *
	 * @param taxPayment 电商模式 0
	，包税 1
	，邮政 2
	，个人 3
	 */
	public void setTaxPayment(String taxPayment) {
		this.taxPayment = taxPayment;
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
}