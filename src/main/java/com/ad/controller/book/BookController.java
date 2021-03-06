package com.ad.controller.book;

import com.ad.model.Book;
import com.ad.model.UserBookLink;
import com.ad.service.BookService;
import com.ad.service.BookTypeService;
import com.ad.service.UserBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;

/**
 * Created by Ivan on 2016/8/6.
 */
@Controller
@RequestMapping(value = "admin/book")
public class BookController {

    @Autowired
    private BookService bookService;

    @Autowired
    private UserBookService userBookService;

    @Autowired
    private BookTypeService bookTypeService;

    @RequestMapping(value = "/list")
    public String list(Map<String, Object> map){
        map.put("book",bookService.selectAll());
        map.put("bookType",bookTypeService.selectAll());
        return "admin/book/list";
    }

    @RequestMapping(value = "/addUI")
    public String addUI(Map<String, Object> map){
        map.put("bookType",bookTypeService.selectAll());
        return "admin/book/saveUI";
    }

    @RequestMapping(value = "/add")
    public String add(String name, Long bt_id, String author, String publication_date,
                      String intro,Long existing,@RequestParam(value = "picture", required = false) MultipartFile picture){
        Book book = new Book();
        book.setName(name);
        book.setBt_id(bt_id);
        System.out.println(bt_id);
        book.setAuthor(author);
        book.setPublication_date(publication_date);
        book.setIntro(intro);
        book.setExisting(existing);
        bookService.add(book,picture);
        return "redirect:list";
    }

    @RequestMapping(value = "/updateUI")
    public String updateUI(@RequestParam(value = "id") String id, Map<String, Object> map){
        map.put("book_1",bookService.selectByPrimaryKey(id));
        map.put("bookType_1",bookTypeService.selectAll());
        return "admin/book/saveUI";
    }

    @RequestMapping(value = "/update")
    public String update(String b_id,String name, Long bt_id, String author, String publication_date,
                         String intro,MultipartFile picture,Long existing){
        Book book = bookService.selectByPrimaryKey(b_id);
        book.setName(name);
        book.setBt_id(bt_id);
        book.setAuthor(author);
        book.setPublication_date(publication_date);
        book.setIntro(intro);
        book.setExisting(existing);
        bookService.add(book,picture);
        return "redirect:list";
    }

    @RequestMapping(value = "/delete")
    public String delete(@RequestParam(value = "id") String id){
        List<UserBookLink> userBookLinks = userBookService.selectListByForeignKey(id);
        if(userBookLinks.size()>0){
            userBookService.deleteList(id);
        }
        bookService.deleteByPrimaryKey(id);
        return "redirect:list";
    }

}
