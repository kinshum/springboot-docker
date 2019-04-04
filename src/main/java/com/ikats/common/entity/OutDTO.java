package com.ikats.common.entity;

import java.util.List;

public class OutDTO<T>
{
    /** 调用是否成功 */
    private Boolean success;

    /** 返回附加信息 */
    private String message;

    /** 返回附加code */
    private String code;

    private Long id;

    /** 数据翻页信息 */
    private Page page;

    private Long count;

    /** 单条返回值 */
    private T dataRow;

    /** 多条返回值 */
    private List<T> dataTable;
    /** 返回的token **/
    private String token;

    private String errorStatus;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setSuccess(Boolean value)
    {
        this.success= value;
    }

    public Boolean getSuccess()
    {
        return this.success;
    }

    public void setMessage(String value)
    {
        this.message= value;
    }

    public String getMessage()
    {
        return this.message;
    }

    public Long getCount()
    {
        return this.count;
    }

    public void setCount(Long count)
    {
        this.count = count;
    }

    public Page getPage()
    {
        return this.page;
    }

    public void setPage(Page page)
    {
        this.page = page;
    }

    public T getDataRow() {
        return dataRow;
    }

    public void setDataRow(T value)
    {
        this.dataRow = value;
    }

    public List<T> getDataTable()
    {
        return this.dataTable;
    }

    public void setDataTable(List<T> value)
    {
        this.dataTable = value;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getErrorStatus() {
        return errorStatus;
    }

    public void setErrorStatus(String errorStatus) {
        this.errorStatus = errorStatus;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
