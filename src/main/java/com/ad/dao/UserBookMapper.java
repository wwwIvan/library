package com.ad.dao;

import com.ad.model.UserBookLink;
import com.ad.util.BaseMapper;

import java.util.List;

/**
 * Created by Ivan on 2016/8/2.
 */
public interface UserBookMapper extends BaseMapper<UserBookLink> {
    List<UserBookLink> selectByForeignKey(Long u_id);
}
