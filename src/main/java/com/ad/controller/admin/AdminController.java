package com.ad.controller.admin;

import com.ad.model.Admin;
import com.ad.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * Created by Ivan on 2016/8/2.
 */
@Controller
@SessionAttributes({"logged"})
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

    @RequestMapping(value = "/check")
    public void check(String account, HttpServletResponse response) throws IOException{
        List<Admin> admins = adminService.check(account);
        if(admins.size()>0){
            response.getWriter().print(false);
        }else{
            response.getWriter().print(true);
        }
    }

    @RequestMapping(value = "/loginUI")
    public String loginUI(){
        return "admin/loginUI";
    }


    @RequestMapping(value = "/login")
    public String login(String account,String password,Map<String, Object> map){
        map.put("logged",adminService.login(account,password));
        return "admin/list";
    }

    @RequestMapping(value = "/list")
    public String list(){
        return "admin/list";
    }


}
