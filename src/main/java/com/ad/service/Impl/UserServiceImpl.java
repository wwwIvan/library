package com.ad.service.Impl;

import com.ad.dao.UserMapper;
import com.ad.model.User;
import com.ad.service.UserService;
import com.ad.util.BaseMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Ivan on 2016/8/2.
 */
@Service
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {

    @Autowired
    private UserMapper userMapper;

    protected BaseMapper<User> getBaseMapper() {
        return userMapper;
    }
}
