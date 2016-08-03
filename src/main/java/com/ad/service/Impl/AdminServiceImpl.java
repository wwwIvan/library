package com.ad.service.Impl;

import com.ad.dao.AdminMapper;
import com.ad.model.Admin;
import com.ad.service.AdminService;
import com.ad.util.BaseMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Ivan on 2016/8/2.
 */
@Service
public class AdminServiceImpl extends BaseServiceImpl<Admin> implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    protected BaseMapper<Admin> getBaseMapper() {
        return adminMapper;
    }
}
