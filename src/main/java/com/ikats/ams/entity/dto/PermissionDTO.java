package com.ikats.ams.entity.dto;

import com.ikats.ams.entity.PermissionBean;
import com.ikats.common.entity.OutDTO;

import java.io.Serializable;
import java.util.List;


public class PermissionDTO extends OutDTO<PermissionBean> implements Serializable {

    private static final long serialVersionUID = -1L;

    private List<Object> treeDate;

    public List<Object> getTreeDate() {
        return treeDate;
    }

    public void setTreeDate(List<Object> treeDate) {
        this.treeDate = treeDate;
    }
}
