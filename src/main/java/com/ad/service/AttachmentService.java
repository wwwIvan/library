package com.ad.service;

import com.ad.model.Attachment;

import java.util.List;

/**
 * Created by meiko on 2016/7/20.
 */
public interface AttachmentService extends BaseService<Attachment> {
    public List<Attachment> findByPid(String pid);
    public void clear(String realPath);
    public void delete(String id);

    public void deleteAttachment(Attachment attachment);
}
