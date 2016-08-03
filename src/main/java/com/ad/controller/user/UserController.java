package com.ad.controller.user;

import com.ad.model.User;
import com.ad.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Ivan on 2016/8/2.
 */
@Controller
@RequestMapping(value = "/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/registerUI")
    public String registerUI(){
        return "user/register";
    }

    @RequestMapping(value = "register")
    public String register(User user){
        userService.insert(user);
        return "user/list";
    }

}
