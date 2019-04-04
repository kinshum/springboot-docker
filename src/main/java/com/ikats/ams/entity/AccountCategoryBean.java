package com.ikats.ams.entity;

import java.util.Date;


public class AccountCategoryBean implements java.io.Serializable {


    private static final long serialVersionUID = 1L;

    private Long id;

    /** 账套编码
     ， */
    private String accountId;

    /** 收入支出:I-收入;O-支出;
     ，
     ， */
    private String inout;

    /** 一级分类编码
     ， */
    private String categoryLevel1Code;

    /** 一级分类名称
     ， */
    private String categoryLevel1Name;

    /** 二级分类编码
     ， */
    private String categoryLevel2Code;

    /** 二级分类名称
     ， */
    private String categoryLevel2Name;

    /** 记账科目编码
     ， */
    private String categoryCode;

    /** 记账科目名称
     ， */
    private String categoryName;

    /** 科目说明
     ， */
    private String note;

    /** 创建人
     ， */
    private String creator;

    /** 创建时间
     ， */
    private Date createTime;

    /** 状态:0存在,1已删除 */
    private String df;

    /**组织ID   */
    private Integer   orgId;

    //父id
    private Integer pid;

    //导入的时候需要的验证
    private boolean exist;

    public Integer getOrgId() {		return orgId;	}
    public void setOrgId(Integer orgId) {		this.orgId = orgId;	}

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 获得 账套编码
     ，
     *
     * @return 账套编码
    ，
     */
    public String getAccountId() {
        return this.accountId;
    }

    /**
     * 设置 账套编码
     ，
     *
     * @param accountId 账套编码
    ，
     */
    public void setAccountId(String accountId) {
        this.accountId = accountId;
    }

    /**
     * 获得 收入支出:I-收入;O-支出;
     ，
     ，
     *
     * @return 收入支出:I-收入;O-支出;
    ，
    ，
     */
    public String getInout() {
        return this.inout;
    }

    /**
     * 设置 收入支出:I-收入;O-支出;
     ，
     ，
     *
     * @param inout 收入支出:I-收入;O-支出;
    ，
    ，
     */
    public void setInout(String inout) {
        this.inout = inout;
    }

    /**
     * 获得 一级分类编码
     ，
     *
     * @return 一级分类编码
    ，
     */
    public String getCategoryLevel1Code() {
        return this.categoryLevel1Code;
    }

    /**
     * 设置 一级分类编码
     ，
     *
     * @param categoryLevel1Code 一级分类编码
    ，
     */
    public void setCategoryLevel1Code(String categoryLevel1Code) {
        this.categoryLevel1Code = categoryLevel1Code;
    }

    /**
     * 获得 一级分类名称
     ，
     *
     * @return 一级分类名称
    ，
     */
    public String getCategoryLevel1Name() {
        return this.categoryLevel1Name;
    }

    /**
     * 设置 一级分类名称
     ，
     *
     * @param categoryLevel1Name 一级分类名称
    ，
     */
    public void setCategoryLevel1Name(String categoryLevel1Name) {
        this.categoryLevel1Name = categoryLevel1Name;
    }

    /**
     * 获得 二级分类编码
     ，
     *
     * @return 二级分类编码
    ，
     */
    public String getCategoryLevel2Code() {
        return this.categoryLevel2Code;
    }

    /**
     * 设置 二级分类编码
     ，
     *
     * @param categoryLevel2Code 二级分类编码
    ，
     */
    public void setCategoryLevel2Code(String categoryLevel2Code) {
        this.categoryLevel2Code = categoryLevel2Code;
    }

    /**
     * 获得 二级分类名称
     ，
     *
     * @return 二级分类名称
    ，
     */
    public String getCategoryLevel2Name() {
        return this.categoryLevel2Name;
    }

    /**
     * 设置 二级分类名称
     ，
     *
     * @param categoryLevel2Name 二级分类名称
    ，
     */
    public void setCategoryLevel2Name(String categoryLevel2Name) {
        this.categoryLevel2Name = categoryLevel2Name;
    }

    /**
     * 获得 记账科目编码
     ，
     *
     * @return 记账科目编码
    ，
     */
    public String getCategoryCode() {
        return this.categoryCode;
    }

    /**
     * 设置 记账科目编码
     ，
     *
     * @param categoryCode 记账科目编码
    ，
     */
    public void setCategoryCode(String categoryCode) {
        this.categoryCode = categoryCode;
    }

    /**
     * 获得 记账科目名称
     ，
     *
     * @return 记账科目名称
    ，
     */
    public String getCategoryName() {
        return this.categoryName;
    }

    /**
     * 设置 记账科目名称
     ，
     *
     * @param categoryName 记账科目名称
    ，
     */
    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    /**
     * 获得 科目说明
     ，
     *
     * @return 科目说明
    ，
     */
    public String getNote() {
        return this.note;
    }

    /**
     * 设置 科目说明
     ，
     *
     * @param note 科目说明
    ，
     */
    public void setNote(String note) {
        this.note = note;
    }

    /**
     * 获得 创建人
     ，
     *
     * @return 创建人
    ，
     */
    public String getCreator() {
        return this.creator;
    }

    /**
     * 设置 创建人
     ，
     *
     * @param creator 创建人
    ，
     */
    public void setCreator(String creator) {
        this.creator = creator;
    }

    /**
     * 获得 创建时间
     ，
     *
     * @return 创建时间
    ，
     */
    public Date getCreateTime() {
        return this.createTime;
    }

    /**
     * 设置 创建时间
     ，
     *
     * @param createTime 创建时间
    ，
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * 获得 状态:0存在,1已删除
     *
     * @return 状态:0存在,1已删除
     */
    public String getDf() {
        return this.df;
    }

    /**
     * 设置 状态:0存在,1已删除
     *
     * @param df 状态:0存在,1已删除
     */
    public void setDf(String df) {
        this.df = df;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public boolean isExist() {
        return exist;
    }

    public void setExist(boolean exist) {
        this.exist = exist;
    }
}
