package com.ikats.ams.entity;



public class AccountitemCopyDto extends AccountitemBean {

    private String businessModeCode;

    private String settlementObjectCode;

    public String getBusinessModeCode() {
        return businessModeCode;
    }

    public void setBusinessModeCode(String businessModeCode) {
        this.businessModeCode = businessModeCode;
    }

    public String getSettlementObjectCode() {
        return settlementObjectCode;
    }

    public void setSettlementObjectCode(String settlementObjectCode) {
        this.settlementObjectCode = settlementObjectCode;
    }

}