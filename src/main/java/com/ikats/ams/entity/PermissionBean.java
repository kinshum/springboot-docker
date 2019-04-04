package com.ikats.ams.entity;

import java.io.Serializable;

public class PermissionBean implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;

    /** 资源名称 */
    private String name;

    /** 资源 */
    private String code;

    /** 是否可用,1：可用，0不可用 */
    private String enabled;

    /** 层级 */
    private Long pid;

    /** 图标 */
    private String icon;

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 获得 资源名称
     *
     * @return 资源名称
     */
    public String getName() {
        return this.name;
    }

    /**
     * 设置 资源名称
     *
     * @param name 资源名称
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获得 资源
     *
     * @return 资源
     */
    public String getCode() {
        return this.code;
    }

    /**
     * 设置 资源
     *
     * @param code 资源
     */
    public void setCode(String code) {
        this.code = code;
    }

    /**
     * 获得 是否可用,1：可用，0不可用
     *
     * @return 是否可用,1：可用，0不可用
     */
    public String getEnabled() {
        return this.enabled;
    }

    /**
     * 设置 是否可用,1：可用，0不可用
     *
     * @param enabled 是否可用,1：可用，0不可用
     */
    public void setEnabled(String enabled) {
        this.enabled = enabled;
    }

    /**
     * 获得 层级
     *
     * @return 层级
     */
    public Long getPid() {
        return pid;
    }

    /**
     * 设置 层级
     *
     * @param pid 层级
     */
    public void setPid(Long pid) {
        this.pid = pid;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }
}
