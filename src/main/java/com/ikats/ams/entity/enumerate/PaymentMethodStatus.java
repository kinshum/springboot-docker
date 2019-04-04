package com.ikats.ams.entity.enumerate;

/**
 *  结算方式
 */
public enum PaymentMethodStatus
{
	//普通的
	COMMON("0")
	//月结的
	,MONTHLY("1")
	//预付
	,ADVANCE("2");

	private PaymentMethodStatus(String value)
	{
		this.value = value;
	}
	
	private String value;
	
	public String getValue()
	{
		return value;
	}
}
