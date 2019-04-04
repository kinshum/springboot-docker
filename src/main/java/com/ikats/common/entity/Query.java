package com.ikats.common.entity;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Query<T> {
    private Long Id;

    private Long userId;

    /** 更新数据行 */
    private T dataRow;


    /** 更新数据表 */
    private List<T> dataTable;


    /** 当前页码，默认为1 */
    private Integer pageNum    = 1;

    /** 每页显示数据数量，默认10 */
    private Integer pageSize   = 10;


    /** 数据翻页信息 */
    private Page page;


    private String orderBy;

    public Long getId() {
        return Id;
    }

    public void setId(Long Id) {
        this.Id = Id;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    /** 调用数据条件 */
    private Map<String,String> express;

    public Integer getPageNum() {
        return pageNum;
    }

    public void setPageNum(Integer pageNum) {
        this.pageNum = pageNum;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Page getPage()
    {
        return this.page;
    }

    public void setPage(Page page)
    {
        this.page = page;
    }

    public String getOrderBy() {
        return orderBy;
    }

    public void setOrderBy(String orderBy) {
        this.orderBy = orderBy;
    }

    public Map<String,String> getExpress() {
        if(express==null)
            this.express=new HashMap<String,String>();
        return this.express;
    }

    public void setExpress(Map<String,String> value)
    {
        this.express = value;
    }

    public List<T> getDataTable() {
        return dataTable;
    }

    public void setDataTable(List<T> dataTable) {
        this.dataTable = dataTable;
    }

    public T getDataRow()
    {
        return this.dataRow;
    }

    public void setDataRow(T value)
    {
        this.dataRow = value;
    }

}
