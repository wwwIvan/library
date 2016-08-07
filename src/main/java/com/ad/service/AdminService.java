package com.ad.service;

import com.ad.model.Admin;

import java.util.List;

/**
 * Created by Ivan on 2016/8/2.
 */
public interface AdminService extends BaseService<Admin>{
    public Admin login(String account, String password);
    List<Admin> checkAccount(String account);
}
