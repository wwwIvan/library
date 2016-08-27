package com.ad.controller;

import com.ad.model.Book;
import com.ad.model.BookType;
import com.ad.model.User;
import com.ad.model.UserBookLink;
import com.ad.service.BookService;
import com.ad.service.BookTypeService;
import com.ad.service.UserBookService;
import com.ad.service.UserService;
import com.ad.util.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

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
    private BookTypeService bookTypeService;

    @Autowired
    private UserService userService;

    @Autowired
    private UserBookService userBookService;

    @RequestMapping(value = "/search")
    public String search(Model model, HttpServletRequest request, @RequestParam(value = "name",required = false)String name,
                         @RequestParam(value = "pageNow",required = false) Long pageNow){
        List<Book> books = bookService.selectAll();
        List<BookType> bookTypes = bookTypeService.selectAll();
        model.addAttribute("bookList",books);
        model.addAttribute("bookTypes",bookTypes);
        model.addAttribute("name",name);
        bookService.selectBooksByPageName(request,model,name);
        return "stage/bookList";
    }

    @RequestMapping(value = "/personal")
    public String personal(Model model,@RequestParam(value = "userId") Long userId){
        model.addAttribute("user",userService.selectByPrimaryKey(userId));
        model.addAttribute("books",userService.selectUserBook(userId));
//        List<UserBookLink> userBookLink = userBookService.selectByForeignKey(userId);
//        model.addAttribute("books",bookService.selectBookByList(userBookLink));
        return "stage/personal";
    }

    @RequestMapping(value = "/bookList")
    public String bookList(Model model, HttpServletRequest request, @RequestParam(value = "bt_id",required = false) Long bt_id,
                           @RequestParam(value = "pageNow",required = false) Long pageNow){
        List<Book> books = bookService.selectAll();
        List<BookType> bookTypes = bookTypeService.selectAll();
        if(bt_id == null){
            bookService.showBooksByPage(request,model);
            model.addAttribute("bookList",books);
            model.addAttribute("bookTypes",bookTypes);
        }else{
            bookService.showTypeBooksByPage(request,model,bt_id);
            model.addAttribute("bookList",books);
            model.addAttribute("bookTypes",bookTypes);
            model.addAttribute("bt_id",bt_id);
        }
        return "stage/bookList";
    }

    @RequestMapping(value = "/cancel")
    public String cancel(Model model,HttpServletRequest request, @RequestParam(value = "b_id") String b_id,
                         @RequestParam(value = "userId") Long userId){
        userBookService.deleteSubscibe(b_id,userId);
        bookService.addExisting(b_id);
        userService.addExisting(userId);
        model.addAttribute("user",userService.selectByPrimaryKey(userId));
        model.addAttribute("books",userService.selectUserBook(userId));
        request.setAttribute("result", new AjaxResult(true, "取消订阅成功"));
        return "stage/personal";
    }

    @RequestMapping(value = "/subscibe")
    public String subscibe(Model model, HttpServletRequest request,@RequestParam(value = "bt_id",required = false) Long bt_id,
                           @RequestParam(value = "b_id") String  b_id,@RequestParam(value = "userId") Long userId){
        if(bt_id == null){
            bookService.showBooksByPage(request,model);
            model.addAttribute("bookList",bookService.selectAll());
            model.addAttribute("bookTypes",bookTypeService.selectAll());
        }else{
            bookService.showTypeBooksByPage(request,model,bt_id);
            model.addAttribute("bookList",bookService.selectAll());
            model.addAttribute("bookTypes",bookTypeService.selectAll());
            model.addAttribute("bt_id",bt_id);
        }
        UserBookLink userBookLink = userBookService.selectByForeignKey(b_id,userId);
        if(userBookLink != null){
            request.setAttribute("result", new AjaxResult(false, "您已经订阅过此书"));
            return "stage/bookList";
        }else {
            bookService.cutExisting(b_id);
            userService.cutExisting(userId);
            request.setAttribute("result", new AjaxResult(true, "订阅成功"));
            userBookService.addSubscibe(b_id,userId);
            return "stage/bookList";
        }
    }

    @RequestMapping(value = "/adLibrary")
    public String adLibrary(Map<String, Object> map){
        List<Book> books = bookService.selectAll();
        String b_id = null;
        Long max = 0L;
        long num = 0;
        for(int i=0;i<books.size();i++){
            num = userBookService.getSubscibeCount(books.get(i).getB_id());
            if(num > max){
                b_id = books.get(i).getB_id();
                max = num;
            }
        }
        Book book = bookService.selectByPrimaryKey(b_id);
        map.put("book",books);
        map.put("recommendation",book);
        map.put("bookType",bookTypeService.selectByPrimaryKey(book.getBt_id()));
        return "stage/adLibrary";
    }

    @RequestMapping(value = "/updateUI")
    public String userUpdateUI(Long u_id,Map<String, Object> map) {
        map.put("user",userService.selectByPrimaryKey(u_id));
        return "stage/userRegister";
    }

    @RequestMapping(value = "/update")
    public String userUpdate(User user,Map<String, Object> map) {
        userService.updateByPrimaryKey(user);
        map.put("user",userService.selectByPrimaryKey(user.getU_id()));
        return "stage/personal";
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

    @RequestMapping(value = "/logout")
    public String logout(SessionStatus sessionStatus,Map<String, Object> map){
        map.put("book",bookService.selectAll());
        sessionStatus.setComplete();
        return "redirect:adLibrary";
    }

    @RequestMapping(value = "/loginUI")
    public String userLogin(){
        return "stage/userLogin";
    }

    @RequestMapping(value = "/login")
    public String login(String account,String password,Map<String, Object> map){
        map.put("userLogged",userService.login(account,password));
        map.put("book",bookService.selectAll());
        return "redirect:adLibrary";
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
