package com.ad.service.Impl;

import com.ad.dao.UserBookMapper;
import com.ad.model.UserBookLink;
import com.ad.service.UserBookService;
import com.ad.util.BaseMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Ivan on 2016/8/5.
 */
@Service
public class UserBookServiceImpl extends BaseServiceImpl<UserBookLink> implements UserBookService {

    @Autowired
    private UserBookMapper userBookMapper;

    @Override
    public void deleteSubscibe(String b_id, Long u_id) {
        UserBookLink userBookLink = new UserBookLink();
        userBookLink.setB_id(b_id);
        userBookLink.setU_id(u_id);
        userBookMapper.deleteSubscibe(userBookLink);
    }

    @Override
    public UserBookLink selectByForeignKey(String b_id, Long u_id) {
        UserBookLink userBookLink = new UserBookLink();
        userBookLink.setB_id(b_id);
        userBookLink.setU_id(u_id);
        return userBookMapper.selectByForeignKey(userBookLink);
    }

    @Override
    public void addSubscibe(String b_id, Long u_id) {
        UserBookLink userBookLink = new UserBookLink();
        userBookLink.setB_id(b_id);
        userBookLink.setU_id(u_id);
        userBookMapper.insert(userBookLink);
    }

    @Override
    protected BaseMapper<UserBookLink> getBaseMapper() {
        return userBookMapper;
    }
}