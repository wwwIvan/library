package com.ad.service.Impl;

import com.ad.dao.AdminMapper;
import com.ad.model.Admin;
import com.ad.service.AdminService;
import com.ad.util.BaseMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Ivan on 2016/8/2.
 */
@Service
public class AdminServiceImpl extends BaseServiceImpl<Admin> implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    public List<Admin> check(String account) {
        List<Admin> admins = adminMapper.check(account);
        return admins;
    }

    protected BaseMapper<Admin> getBaseMapper() {
        return adminMapper;
    }

    public Admin login(String account, String password) {
        Admin admin = new Admin();
        admin.setAccount(account);
        admin.setPassword(password);
        Admin loginAdmin = adminMapper.login(admin);
        return loginAdmin;
    }

}
