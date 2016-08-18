package com.ad.controller.book;

import com.ad.model.Book;
import com.ad.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

/**
 * Created by Ivan on 2016/8/6.
 */
@Controller
@RequestMapping(value = "/book")
public class BookController {

    @Autowired
    private BookService bookService;

    @RequestMapping(value = "/list")
    public String list(Map<String, Object> map){
        map.put("book",bookService.selectAll());
        return "book/list";
    }

    @RequestMapping(value = "/addUI")
    public String addUI(){
        return "book/saveUI";
    }

    @RequestMapping(value = "/updateUI")
    public String updateUI(@RequestParam(value = "id") Long id, Map<String, Object> map){
        map.put("book_1",bookService.selectByPrimaryKey(id));
        return "book/saveUI";
    }

    @RequestMapping(value = "/update")
    public String update(Book book){
        bookService.updateByPrimaryKey(book);
        return "redirect:/book/list";
    }

}
