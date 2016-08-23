package com.ad.controller.admin;

import com.ad.model.Admin;
import com.ad.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

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

    /**
     * 移除@SessionAttributes的缓存，但不清楚HttpSession的缓存
     * @param sessionStatus
     * @return
     */
    @RequestMapping(value = "/logout")
    public String logout(SessionStatus sessionStatus){
        sessionStatus.setComplete();
        return "admin/list";
    }

    @RequestMapping(value = "/registerUI")
    public String registerUI(){
        return "admin/registerUI";
    }

    @RequestMapping(value = "/register")
    public String register(Admin admin){
        adminService.insert(admin);
        return "admin/list";
    }

    @RequestMapping(value = "/checkAccount")
    public void checkAccount(String account, HttpServletResponse response) throws IOException{
        List<Admin> admins = adminService.checkAccount(account);
        if(admins.size()>0){
            response.getWriter().print(false);
        }else{
            response.getWriter().print(true);
        }
    }

    @RequestMapping(value = "/check")
    public void check(String account,String password, HttpServletResponse response) throws IOException{
        Admin admin = adminService.login(account,password);
        if(admin == null){
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
        map.put("admin",adminService.selectAll());
        return "admin/list";
    }

    @RequestMapping(value = "/list")
    public String list(Map<String, Object> map){
        map.put("admin",adminService.selectAll());
        return "admin/list";
    }


}
