package com.ikats.ams.entity.query;

import com.ikats.ams.entity.AccountitemBean;
import com.ikats.ams.entity.AmsAttachmentBean;
import com.ikats.ams.entity.UserBean;
import com.ikats.common.entity.Query;

import java.io.Serializable;
import java.util.List;

/**
 * @Author: jz
 * @Date: Created in 9:29 2017/8/30
 * @Description:
 */
public class AccountitemQuery extends Query<AccountitemBean> implements Serializable {
    private static final long serialVersionUID = 1L;

    private AmsAttachmentBean attachment;

    private UserBean userBean;

    private List<Long> ids;

    public AmsAttachmentBean getAttachment() {
        return attachment;
    }

    public void setAttachment(AmsAttachmentBean attachment) {
        this.attachment = attachment;
    }

    public UserBean getUserBean() {
        return userBean;
    }

    public void setUserBean(UserBean userBean) {
        this.userBean = userBean;
    }

    public List<Long> getIds() {
        return ids;
    }

    public void setIds(List<Long> ids) {
        this.ids = ids;
    }
}
