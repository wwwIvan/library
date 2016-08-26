package com.ad.dao;

import com.ad.model.UserBookLink;
import com.ad.util.BaseMapper;

/**
 * Created by Ivan on 2016/8/2.
 */
public interface UserBookMapper extends BaseMapper<UserBookLink> {
    UserBookLink selectByForeignKey(UserBookLink userBookLink);
    void deleteSubscibe(UserBookLink userBookLink);
}
