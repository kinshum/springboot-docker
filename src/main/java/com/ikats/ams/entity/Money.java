package com.ikats.ams.entity;

import java.math.BigDecimal;

public class Money implements java.io.Serializable  {

    private BigDecimal revenueAll;

    private BigDecimal disbursementAll;

    private double exchangeRate;

    private Integer numAll;

    public BigDecimal getRevenueAll() {
        return revenueAll;
    }

    public void setRevenueAll(BigDecimal revenueAll) {
        this.revenueAll = revenueAll;
    }

    public BigDecimal getDisbursementAll() {
        return disbursementAll;
    }

    public void setDisbursementAll(BigDecimal disbursementAll) {
        this.disbursementAll = disbursementAll;
    }

    public double getExchangeRate() {
        return exchangeRate;
    }

    public void setExchangeRate(double exchangeRate) {
        this.exchangeRate = exchangeRate;
    }

    public Integer getNumAll() {
        return numAll;
    }

    public void setNumAll(Integer numAll) {
        this.numAll = numAll;
    }
}
