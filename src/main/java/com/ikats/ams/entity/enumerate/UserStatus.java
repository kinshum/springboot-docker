package com.ikats.ams.entity.enumerate;

/**
 *  用户组织的枚举
 */
public enum UserStatus
{
	//(组织下的用户)
	SUPER_ADMIN_STATUS("1")
	//客户下的用户用户状态赋值为这个
	,ORDINARY_USER_STATUS("2")
	//普通组织
	,ORDINARY_ORG_STATUS("3")
	//超级管理员id
	,SUPER_ADMIN_ID("5")
	//组织用户id
	,ORDINARY_USER_ID("1");

	private UserStatus(String value)
	{
		this.value = value;
	}
	
	private String value;
	
	public String getValue()
	{
		return value;
	}
}
