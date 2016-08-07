package com.ad.dao;

import com.ad.model.Admin;
import com.ad.util.BaseMapper;

import java.util.List;

/**
 * Created by Ivan on 2016/8/2.
 */
public interface AdminMapper extends BaseMapper<Admin> {
    Admin login(Admin admin);
    List<Admin> checkAccount(String account);
}
