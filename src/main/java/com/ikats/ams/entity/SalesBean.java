package com.ikats.ams.entity;

import java.io.Serializable;

public class SalesBean implements Serializable
{
	private static final long serialVersionUID = 1L;

	private Long id;

	/** 国家码 	 */
	private String countryCode;

	/** 国家简写 */
	private String tCode;

	/**国家  */
	private String countryName;

	/**国家的英文名称  */
	private String englishName;


	public Long getId() {		return id;	}
	public void setId(Long id) {		this.id = id;	}
	public String getCountryCode() {		return countryCode;	}
	public void setCountryCode(String countryCode) {		this.countryCode = countryCode;	}
	public String gettCode() {		return tCode;	}
	public void settCode(String tCode) {		this.tCode = tCode;	}
	public String getCountryName() {		return countryName;	}
	public void setCountryName(String countryName) {		this.countryName = countryName;	}
	public String getEnglishName() {		return englishName;	}
	public void setEnglishName(String englishName) {		this.englishName = englishName;	}
}