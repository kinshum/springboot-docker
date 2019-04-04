package com.ikats.ams.entity.enumerate;

/**
 *  资源授权的枚举
 */
public enum AuthScopeStatus
{
	//私有
	PRIVATE("1")
	//公有
	,PUBLIC("2")
	//特殊授权
	,CUSTOM("3");

	private AuthScopeStatus(String value)
	{
		this.value = value;
	}
	
	private String value;
	
	public String getValue()
	{
		return value;
	}
}
