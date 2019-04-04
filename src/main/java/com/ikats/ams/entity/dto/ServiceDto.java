package com.ikats.ams.entity.dto;



import com.ikats.ams.entity.*;
import com.ikats.common.entity.OutDTO;

import java.io.Serializable;


public class ServiceDto extends OutDTO<ServiceBean> implements Serializable{
    private static final long serialVersionUID = -1L;

    //清关扩展信息
    private CustomsClearanceBean customs;
    //分销扩展信息
    private DistributionBean distribution;
    //采购扩展信息
    private PurchaserBean purchaser;
    //仓储扩展信息
    private WarehouseBean warehouse;
    //分销渠道扩展信息
    private DistributionChannelBean channel;

    public CustomsClearanceBean getCustoms() {
        return customs;
    }

    public void setCustoms(CustomsClearanceBean customs) {
        this.customs = customs;
    }

    public DistributionBean getDistribution() {
        return distribution;
    }

    public void setDistribution(DistributionBean distribution) {
        this.distribution = distribution;
    }

    public PurchaserBean getPurchaser() {
        return purchaser;
    }

    public void setPurchaser(PurchaserBean purchaser) {
        this.purchaser = purchaser;
    }

    public WarehouseBean getWarehouse() {
        return warehouse;
    }

    public void setWarehouse(WarehouseBean warehouse) {
        this.warehouse = warehouse;
    }

    public DistributionChannelBean getChannel() {
        return channel;
    }

    public void setChannel(DistributionChannelBean channel) {
        this.channel = channel;
    }
}
