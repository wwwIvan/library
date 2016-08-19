package com.ad.dao;

import com.ad.model.Attachment;
import com.ad.util.BaseMapper;

import java.util.List;

/**
 * Created by meiko on 2016/7/3.
 */
public interface AttachmentMapper extends BaseMapper<Attachment> {
    public List<Attachment> findByPid(String pid);
}
