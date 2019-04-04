package com.ikats.common.entity;

import java.io.Serializable;

public class Page implements Serializable {
    private static final long serialVersionUID = -1L;

    /** 当前页码，默认为1 */
    private Integer pageNum    = 1;

    /** 每页显示数据数量，默认10 */
    private Integer pageSize   = 10;

    /** 总记录数 */
    private Long  totalCount = 0L;

    /** 总页数 */
    private Integer totalPage  = 0;

    private Long offset  = 0L;


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

    public Long getTotalCount()
    {
        return totalCount;
    }

    public void setTotalCount(Long totalCount)
    {
        this.totalCount = totalCount;
    }

    public Integer getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }

    public Long getOffset() {
        return offset;
    }

    public void setOffset(Long offset)
    {
        this.offset = offset;
    }

}
