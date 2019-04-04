package com.ikats.ams.entity;

public class AmsAttachmentBean  implements java.io.Serializable {
    private static final long serialVersionUID = 1L;

    private Long id;

    /** 附件地址 */
    private String attachmentUrl;

    /** 附件名称 */
    private String pictureName;

    /** 记账明细id */
    private Integer accountitemId;

    /** 对账单id， */
    private Integer billId;

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 获得 附件地址
     *
     * @return 附件地址
     */
    public String getAttachmentUrl() {
        return this.attachmentUrl;
    }

    /**
     * 设置 附件地址
     *
     * @param attachmentUrl 附件地址
     */
    public void setAttachmentUrl(String attachmentUrl) {
        this.attachmentUrl = attachmentUrl;
    }

    /**
     * 获得 附件名称
     *
     * @return 附件名称
     */
    public String getPictureName() {
        return this.pictureName;
    }

    /**
     * 设置 附件名称
     *
     * @param pictureName 附件名称
     */
    public void setPictureName(String pictureName) {
        this.pictureName = pictureName;
    }

    /**
     * 获得 记账明细id
     *
     * @return 记账明细id
     */
    public Integer getAccountitemId() {
        return this.accountitemId;
    }

    /**
     * 设置 记账明细id
     *
     * @param accountitemId 记账明细id
     */
    public void setAccountitemId(Integer accountitemId) {
        this.accountitemId = accountitemId;
    }

    /**
     * 获得 对账单id，
     *
     * @return 对账单id，
     */
    public Integer getBillId() {
        return this.billId;
    }

    /**
     * 设置 对账单id，
     *
     * @param billId 对账单id，
     */
    public void setBillId(Integer billId) {
        this.billId = billId;
    }
}
