package com.ikats.ams.service.ipml;

import com.ikats.ams.entity.dto.AmsAttachmentDto;
import com.ikats.ams.entity.query.AmsAttachmentQuery;
import com.ikats.ams.service.IAmsAttachmentService;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;



@Service
public class AmsAttachmentService implements IAmsAttachmentService {

    @Override
    public AmsAttachmentDto insert(AmsAttachmentQuery query) {
        return null;
    }

    @Override
    public AmsAttachmentDto delete(AmsAttachmentQuery query) {
        return null;
    }

    @Override
    public AmsAttachmentDto update(AmsAttachmentQuery query) {
        return null;
    }

    @Override
    public AmsAttachmentDto selectByKey(AmsAttachmentQuery query) {
        return null;
    }

    @Override
    public AmsAttachmentDto selectCount(AmsAttachmentQuery query) {
        return null;
    }

    @Override
    public AmsAttachmentDto pageByQuery(AmsAttachmentQuery query) {
        return null;
    }
}
