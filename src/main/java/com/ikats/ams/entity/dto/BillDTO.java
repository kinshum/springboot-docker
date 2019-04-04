package com.ikats.ams.entity.dto;



import com.ikats.ams.entity.AmsAttachmentBean;
import com.ikats.ams.entity.BillBean;
import com.ikats.ams.entity.UserBean;
import com.ikats.common.entity.OutDTO;

import java.io.Serializable;

public class BillDTO extends OutDTO<BillBean> implements Serializable {
    private static final long serialVersionUID = -1L;

    private AmsAttachmentBean Attachment;

    private UserBean user;

    public UserBean getUser() {
        return user;
    }

    public void setUser(UserBean user) {
        this.user = user;
    }


    public AmsAttachmentBean getAttachment() {
        return Attachment;
    }

    public void setAttachment(AmsAttachmentBean attachment) {
        Attachment = attachment;
    }
}
