package com.ad.controller;

import com.ad.model.User;
import com.ad.service.BookService;
import com.ad.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * Created by Ivan on 2016/8/24.
 */
@Controller
@RequestMapping(value = "/stage")
public class StageController {
    @Autowired
    private BookService bookService;

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/adLibrary")
    public String adLibrary(Map<String, Object> map){
        map.put("book",bookService.selectAll());
        return "adLibrary";
    }

    @RequestMapping(value = "/registerUI")
    public String userRegister(){
        return "userRegister";
    }

    @RequestMapping(value = "/register")
    public String register(User user){
        userService.insert(user);
        return "userLogin";
    }

    @RequestMapping(value = "/loginUI")
    public String userLogin(){
        return "userLogin";
    }

    @RequestMapping(value = "/login")
    public String login(String account,String password,Map<String, Object> map){
        map.put("userLogged",userService.login(account,password));
        return "adLibrary";
    }

    @RequestMapping(value = "/check")
    public void check(String account,String password, HttpServletResponse response)throws IOException{
        User user = userService.login(account,password);
        if(user == null){
            response.getWriter().print(false);
        }else{
            response.getWriter().print(true);
        }
    }

    @RequestMapping(value = "/checkAccount")
    public void checkAccount(String account, HttpServletResponse response)throws IOException{
        List<User> users = userService.checkAccount(account);
        if(users.size()>0){
            response.getWriter().print(false);
        }else{
            response.getWriter().print(true);
        }
    }

}
