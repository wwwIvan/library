package com.ad.service;

import com.ad.model.UserBookLink;

/**
 * Created by Ivan on 2016/8/2.
 */
public interface UserBookService extends BaseService<UserBookLink>{
    public void addSubscibe(String b_id,Long u_id);
    public void deleteSubscibe(String b_id,Long u_id);
    public UserBookLink selectByForeignKey(String b_id,Long u_id);
    public long getSubscibeCount(String b_id);
}
