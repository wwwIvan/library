package com.ad.service;

import com.ad.model.User;

import java.util.List;

/**
 * Created by Ivan on 2016/8/5.
 */
public interface UserService extends BaseService<User> {
    public User login(String account, String password);
    List<User> checkAccount(String account);
    User selectUserBook(Long u_id);
}
