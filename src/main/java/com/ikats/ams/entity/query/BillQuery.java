package com.ikats.ams.entity.query;


import com.ikats.ams.entity.AccountitemBean;
import com.ikats.ams.entity.AmsAttachmentBean;
import com.ikats.ams.entity.BillBean;
import com.ikats.ams.entity.UserBean;
import com.ikats.common.entity.Query;

import java.io.Serializable;
import java.util.List;

public class BillQuery extends Query<BillBean> implements Serializable {
    private static final long serialVersionUID = -1L;

    private List<AccountitemBean> accountitemBeanList;

    private AmsAttachmentBean attachment;

    private UserBean userBean;

    public UserBean getUserBean() {
        return userBean;
    }

    public void setUserBean(UserBean userBean) {
        this.userBean = userBean;
    }

    public AmsAttachmentBean getAttachment() {
        return attachment;
    }

    public List<AccountitemBean> getAccountitemBeanList() {
        return accountitemBeanList;
    }

    public void setAccountitemBeanList(List<AccountitemBean> accountitemBeanList) {
        this.accountitemBeanList = accountitemBeanList;
    }

    public void setAttachment(AmsAttachmentBean attachment) {
        this.attachment = attachment;
    }
}
