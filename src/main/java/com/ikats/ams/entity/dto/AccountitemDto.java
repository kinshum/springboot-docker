package com.ikats.ams.entity.dto;



import com.ikats.ams.entity.*;
import com.ikats.common.entity.OutDTO;

import java.io.Serializable;
import java.util.List;

public class AccountitemDto extends OutDTO<AccountitemBean> implements Serializable {

    private static final long serialVersionUID = -1L;

    private Money money;

    List<Inout> inout;

    private AmsAttachmentBean Attachment;

    private UserBean user;

    public UserBean getUser() {
        return user;
    }

    public void setUser(UserBean user) {
        this.user = user;
    }

    public Money getMoney() {
        return money;
    }

    public void setMoney(Money money) {
        this.money = money;
    }

    public List<Inout> getInout() {
        return inout;
    }

    public void setInout(List<Inout> inout) {
        this.inout = inout;
    }

    public AmsAttachmentBean getAttachment() {
        return Attachment;
    }

    public void setAttachment(AmsAttachmentBean attachment) {
        Attachment = attachment;
    }

}
