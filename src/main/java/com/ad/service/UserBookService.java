package com.ad.service;

import com.ad.model.UserBookLink;

import java.util.List;

/**
 * Created by Ivan on 2016/8/2.
 */
public interface UserBookService extends BaseService<UserBookLink>{
    public void addSubscibe(String b_id,Long u_id);
    public List<UserBookLink> selectByForeignKey(Long u_id);
}
