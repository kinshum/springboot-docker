package com.ikats.ams.entity.dto;



import com.ikats.ams.entity.AccountCategoryBean;
import com.ikats.ams.entity.UserBean;
import com.ikats.common.entity.OutDTO;

import java.io.Serializable;
import java.util.List;


public class AccountCategoryDto extends OutDTO<AccountCategoryBean> implements Serializable {

    private static final long serialVersionUID = -1L;

    private String StatusCode;

    private List<Object> treeDate;

    private UserBean user;

    public UserBean getUser() {
        return user;
    }

    public void setUser(UserBean user) {
        this.user = user;
    }

    public List<Object> getTreeDate() {
        return treeDate;
    }

    public void setTreeDate(List<Object> treeDate) {
        this.treeDate = treeDate;
    }

    public String getStatusCode() {
        return StatusCode;
    }

    public void setStatusCode(String statusCode) {
        StatusCode = statusCode;
    }


}
