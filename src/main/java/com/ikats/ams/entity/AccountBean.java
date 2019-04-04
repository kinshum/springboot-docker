package com.ikats.ams.entity;

import java.util.Date;


public class AccountBean implements java.io.Serializable {

	private static final long serialVersionUID = 1L;

	private Long id;
	/** 账套编码 */
	private String accountId;
	/**账套名称 */
	private String accountName;
	/** 组织编码*/
	private String orgCode;
	/** 组织中文名*/
	private String orgCname;
	/**英文名 */
	private String orgEname;
	/**简称 */
	private String orgShortname;
	/**所在国 */
	private String country;
	/**结算币种 */
	private String currency;
	/**公司地址 */
	private String address;
	/** 联系人*/
	private String contactPerson;
	/**联系人电话 */
	private String contactPhone;
	/** 银行账号*/
	private String bankAccount;
	/**银行名称 */
	private String bankName;
	/**银行地址 */
	private String bankAddress;
	/**上级账套编码 */
	private Integer parentAccountId;
	/**创建人 */
	private String creator;
	/**创建时间 */
	private Date createTime;
	/**状态:0存在,1已删除 */
	private String df;
	/**收入支出:I-收入;O-支出 */
	private String inout;
	/**组织ID   */
	private Integer   orgId;

	public Integer getOrgId() {		return orgId;	}
	public void setOrgId(Integer orgId) {		this.orgId = orgId;	}

	public String getOrgCode() {		return orgCode;	}
	public void setOrgCode(String orgCode) {		this.orgCode = orgCode;	}

	public Long getId() {		return id;	}
	public void setId(Long id) {		this.id = id;	}

	public String getAccountId() {		return accountId;	}
	public void setAccountId(String accountId) {		this.accountId = accountId;	}

	public String getAccountName() {		return accountName;	}
	public void setAccountName(String accountName) {		this.accountName = accountName;	}

	public String getOrgCname() {		return orgCname;	}
	public void setOrgCname(String orgCname) {		this.orgCname = orgCname;	}

	public String getOrgEname() {		return orgEname;	}
	public void setOrgEname(String orgEname) {		this.orgEname = orgEname;	}

	public String getOrgShortname() {		return orgShortname;	}
	public void setOrgShortname(String orgShortname) {		this.orgShortname = orgShortname;	}

	public String getCountry() {		return country;	}
	public void setCountry(String country) {		this.country = country;	}

	public String getCurrency() {		return currency;	}
	public void setCurrency(String currency) {		this.currency = currency;	}

	public String getAddress() {		return address;	}
	public void setAddress(String address) {		this.address = address;	}

	public String getContactPerson() {		return contactPerson;	}
	public void setContactPerson(String contactPerson) {		this.contactPerson = contactPerson;	}

	public String getContactPhone() {		return contactPhone;	}
	public void setContactPhone(String contactPhone) {		this.contactPhone = contactPhone;	}

	public String getBankAccount() {		return bankAccount;	}
	public void setBankAccount(String bankAccount) {		this.bankAccount = bankAccount;	}

	public String getBankName() {		return bankName;	}
	public void setBankName(String bankName) {		this.bankName = bankName;	}

	public String getBankAddress() {		return bankAddress;	}
	public void setBankAddress(String bankAddress) {		this.bankAddress = bankAddress;	}

	public Integer getParentAccountId() {		return parentAccountId;	}
	public void setParentAccountId(Integer parentAccountId) {		this.parentAccountId = parentAccountId;	}

	public String getCreator() {		return creator;	}
	public void setCreator(String creator) {		this.creator = creator;	}

	public Date getCreateTime() {		return createTime;	}
	public void setCreateTime(Date createTime) {		this.createTime = createTime;	}

	public String getDf() {		return df;	}
	public void setDf(String df) {		this.df = df;	}

	public String getInout() {		return inout;	}
	public void setInout(String inout) {		this.inout = inout;	}
}