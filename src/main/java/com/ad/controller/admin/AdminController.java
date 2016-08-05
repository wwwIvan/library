package com.ad.controller.admin;

import com.ad.model.Admin;
import com.ad.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Ivan on 2016/8/2.
 */
@Controller
@RequestMapping(value = "/admin")
public class AdminController {

    @Autowired
    private AdminService adminService;

    @RequestMapping(value = "/registerUI")
    public String registerUI(){
        return "admin/registerUI";
    }

    @RequestMapping(value = "/register")
    public String register(Admin admin){
        adminService.insert(admin);
        return "admin/list";
    }

    @RequestMapping(value = "/loginUI")
    public String loginUI(){
        return "admin/loginUI";
    }


    @RequestMapping(value = "/login")
    public String login(String account,String password){

        return "admin/list";
    }

    @RequestMapping(value = "/list")
    public String list(){
        return "admin/list";
    }


}
