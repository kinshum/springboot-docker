package com.ikats.ams.entity;


public class AmsBusinessTypeBean  implements java.io.Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;

    /** 业务类型名称 */
    private String businessTypeName;

    private Integer orgId;

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 获得 业务类型名称
     *
     * @return 业务类型名称
     */
    public String getBusinessTypeName() {
        return this.businessTypeName;
    }

    /**
     * 设置 业务类型名称
     *
     * @param businessTypeName 业务类型名称
     */
    public void setBusinessTypeName(String businessTypeName) {
        this.businessTypeName = businessTypeName;
    }

    public Integer getOrgId() {
        return orgId;
    }

    public void setOrgId(Integer orgId) {
        this.orgId = orgId;
    }
}
