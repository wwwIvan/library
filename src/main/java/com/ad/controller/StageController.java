package com.ad.controller;

import com.ad.model.User;
import com.ad.service.BookService;
import com.ad.service.UserBookService;
import com.ad.service.UserService;
import com.ad.util.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * Created by Ivan on 2016/8/24.
 */
@Controller
@SessionAttributes({"userLogged"})
@RequestMapping(value = "/stage")
public class StageController {
    @Autowired
    private BookService bookService;

    @Autowired
    private UserService userService;

    @Autowired
    private UserBookService userBookService;

    @RequestMapping(value = "/personal")
    public String personal(Model model,@RequestParam(value = "userId") Long userId){
        model.addAttribute("user",userService.selectByPrimaryKey(userId));
        model.addAttribute("books",userService.selectUserBook(userId));
//        List<UserBookLink> userBookLink = userBookService.selectByForeignKey(userId);
//        model.addAttribute("books",bookService.selectBookByList(userBookLink));
        return "stage/personal";
    }

    @RequestMapping(value = "/bookList")
    public String bookList(Model model, HttpServletRequest request, @RequestParam(value = "id",required = false) Long bt_id,
                           @RequestParam(value = "pageNow",required = false) Long pageNow){
        if(bt_id == null){
            bookService.showBooksByPage(request,model);
        }else{
            bookService.showTypeBooksByPage(request,model,bt_id);
        }
        return "stage/bookList";
    }

    @RequestMapping(value = "/cancel")
    public String cancel(Model model, HttpServletRequest request,@RequestParam(value = "id",required = false) Long bt_id,
                           @RequestParam(value = "b_id") String  b_id,@RequestParam(value = "userId") Long userId){
        if(bt_id == null){
            bookService.showBooksByPage(request,model);
        }else{
            bookService.showTypeBooksByPage(request,model,bt_id);
        }
        request.setAttribute("result", new AjaxResult(true, "取消订阅成功"));
        userBookService.addSubscibe(b_id,userId);
        return "stage/personal";
    }

    @RequestMapping(value = "/subscibe")
    public String subscibe(Model model, HttpServletRequest request,@RequestParam(value = "id",required = false) Long bt_id,
                           @RequestParam(value = "b_id") String  b_id,@RequestParam(value = "userId") Long userId){
        if(bt_id == null){
            bookService.showBooksByPage(request,model);
        }else{
            bookService.showTypeBooksByPage(request,model,bt_id);
        }
        request.setAttribute("result", new AjaxResult(true, "订阅成功"));
        userBookService.addSubscibe(b_id,userId);
        return "stage/bookList";
    }

    @RequestMapping(value = "/adLibrary")
    public String adLibrary(Map<String, Object> map){
        map.put("book",bookService.selectAll());
        return "stage/adLibrary";
    }

    @RequestMapping(value = "/registerUI")
    public String userRegister(){
        return "stage/userRegister";
    }

    @RequestMapping(value = "/register")
    public String register(User user){
        userService.insert(user);
        return "stage/userLogin";
    }

    @RequestMapping(value = "/loginUI")
    public String userLogin(){
        return "stage/userLogin";
    }

    @RequestMapping(value = "/login")
    public String login(String account,String password,Map<String, Object> map){
        map.put("userLogged",userService.login(account,password));
        map.put("book",bookService.selectAll());
        return "stage/adLibrary";
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
