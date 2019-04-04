package com.ikats.ams.entity.enumerate;

/**
 *  假删除,删除状态的枚举
 */
public enum DeleteStatus
{
	//未删除
	NOT_DELETE("0")
	//入库
	,DELETED("1");

	private DeleteStatus(String value)
	{
		this.value = value;
	}
	
	private String value;
	
	public String getValue()
	{
		return value;
	}
}
