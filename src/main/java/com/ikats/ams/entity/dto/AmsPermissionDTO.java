package com.ikats.ams.entity.dto;


import com.ikats.ams.entity.AmsPermissionBean;
import com.ikats.common.entity.OutDTO;

import java.io.Serializable;
import java.util.List;

/**
 * @Author: jz
 * @Date: Created in 13:53 2017/9/26
 * @Description:
 */
public class AmsPermissionDTO extends OutDTO<AmsPermissionBean> implements Serializable {
    private static final long serialVersionUID = -1L;

    private List<Object> treeDate;

    public List<Object> getTreeDate() {
        return treeDate;
    }

    public void setTreeDate(List<Object> treeDate) {
        this.treeDate = treeDate;
    }
}
