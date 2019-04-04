package com.ikats.ams.entity;

import java.io.Serializable;
import java.util.List;

public class ServiceSelfBean implements Serializable {
    private static final long serialVersionUID = 1L;

    private Long id;

    /** 组织的服务id */
    private Integer orgServiceId;

    /** 供应商服务的id */
    private Integer purchaseServiceId;

    private List<Integer> listId;

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 获得 组织的服务id
     *
     * @return 组织的服务id
     */
    public Integer getOrgServiceId() {
        return this.orgServiceId;
    }

    /**
     * 设置 组织的服务id
     *
     * @param orgServiceId 组织的服务id
     */
    public void setOrgServiceId(Integer orgServiceId) {
        this.orgServiceId = orgServiceId;
    }

    /**
     * 获得 供应商服务的id
     *
     * @return 供应商服务的id
     */
    public Integer getPurchaseServiceId() {
        return this.purchaseServiceId;
    }

    /**
     * 设置 供应商服务的id
     *
     * @param purchaseServiceId 供应商服务的id
     */
    public void setPurchaseServiceId(Integer purchaseServiceId) {
        this.purchaseServiceId = purchaseServiceId;
    }

    public List<Integer> getListId() {
        return listId;
    }

    public void setListId(List<Integer> listId) {
        this.listId = listId;
    }
}
