package com.ad.dao;

import com.ad.model.User;
import com.ad.util.BaseMapper;

import java.util.List;

/**
 * Created by Ivan on 2016/8/2.
 */
public interface UserMapper extends BaseMapper<User> {
    User login(User user);
    List<User> checkAccount(String account);
    User selectUserBook(Long u_id);
}
