package com.ikats.ams.entity;

import java.math.BigDecimal;

public class Revenue implements java.io.Serializable{

    private static final long serialVersionUID = 1L;

    private BigDecimal revenue;

    private BigDecimal disbursement;

    private String businessType;

    private Integer num;

    public BigDecimal getRevenue() {
        return revenue;
    }

    public void setRevenue(BigDecimal revenue) {
        this.revenue = revenue;
    }

    public String getBusinessType() {
        return businessType;
    }

    public void setBusinessType(String businessType) {
        this.businessType = businessType;
    }

    public BigDecimal getDisbursement() {
        return disbursement;
    }

    public void setDisbursement(BigDecimal disbursement) {
        this.disbursement = disbursement;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }
}
