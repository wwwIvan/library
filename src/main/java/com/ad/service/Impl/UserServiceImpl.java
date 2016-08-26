package com.ad.service.Impl;

import com.ad.dao.UserMapper;
import com.ad.model.User;
import com.ad.service.UserService;
import com.ad.util.BaseMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Ivan on 2016/8/5.
 */
@Service
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {

    @Autowired
    private UserMapper userMapper;

    protected BaseMapper<User> getBaseMapper() {
        return userMapper;
    }

    @Override
    public User login(String account, String password) {
        User user = new User();
        user.setAccount(account);
        user.setPassword(password);
        User user1 = userMapper.login(user);
        return user1;
    }

    @Override
    public List<User> checkAccount(String account) {
        List<User> users = userMapper.checkAccount(account);
        return users;
    }

    @Override
    public void addExisting(Long u_id) {
        userMapper.addExisting(u_id);
    }

    @Override
    public void cutExisting(Long u_id) {
        userMapper.cutExisting(u_id);
    }

    @Override
    public User selectUserBook(Long u_id) {
        User users = userMapper.selectUserBook(u_id);
        return users;
    }
}
