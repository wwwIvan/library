package com.ad.service.Impl;

import com.ad.dao.AttachmentMapper;
import com.ad.model.Attachment;
import com.ad.service.AttachmentService;
import com.ad.util.BaseMapper;
import com.ad.util.FileUploadUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by meiko on 2016/7/20.
 */
@Service
public class AttachmentServiceImpl extends BaseServiceImpl<Attachment> implements AttachmentService {
    @Autowired
    private AttachmentMapper attachmentMapper;

    public List<Attachment> findByPid(String pid) {
        return attachmentMapper.findByPid(pid);
    }

    public void clear(String realPath) {
        List<Attachment> attachments= findByPid(null);
        if (attachments!=null){
            for (Attachment attachment:attachments){
                FileUploadUtil.deleteFile(realPath, FileUploadUtil.ATTACHMENT_PATH,attachment.getFileName());
                delete(attachment);
            }
        }
    }

    public void delete(String id) {
        this.attachmentMapper.deleteByPrimaryKey(id);
    }

    public void deleteAttachment(Attachment attachment) {
        this.attachmentMapper.delete(attachment);
    }

    @Override
    protected BaseMapper<Attachment> getBaseMapper() {
        return attachmentMapper;
    }
}
