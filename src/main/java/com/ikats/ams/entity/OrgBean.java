package com.ikats.ams.entity;

import java.io.Serializable;

public class OrgBean implements Serializable {

	private static final long serialVersionUID = 1L;

	/** 主键 */
	private Integer id;

	/** 父id */
	private String pid;

	/** 名称 */
	private String orgName;

	/** 邮编 */
	private String orgPostCode;

	/** 行政邮编 */
	private String orgLocalCode;

	/** 层级*/
	private String orgLevel;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getOrgName() {
		return orgName;
	}

	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}

	public String getOrgPostCode() {
		return orgPostCode;
	}

	public void setOrgPostCode(String orgPostCode) {
		this.orgPostCode = orgPostCode;
	}

	public String getOrgLocalCode() {
		return orgLocalCode;
	}

	public void setOrgLocalCode(String orgLocalCode) {
		this.orgLocalCode = orgLocalCode;
	}

	public String getOrgLevel() {
		return orgLevel;
	}

	public void setOrgLevel(String orgLevel) {
		this.orgLevel = orgLevel;
	}
}