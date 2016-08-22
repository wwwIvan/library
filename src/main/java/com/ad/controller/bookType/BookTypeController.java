package com.ad.controller.bookType;

import com.ad.service.BookTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.util.Map;

/**
 * Created by Ivan on 2016/8/6.
 */
@Controller
@RequestMapping(value = "/bookType")
public class BookTypeController {

    @Autowired
    private BookTypeService bookTypeService;

    @RequestMapping(value = "/typeList")
    public String typeList(Map<String, Object> map,@RequestParam(value = "id") Long bt_id){
        map.put("typeList",bookTypeService.selectBookTypeFetchBook(bt_id).getBook_id());
        map.put("bookType",bookTypeService.selectAll());
        return "bookType/typeList";
    }

    @RequestMapping(value = "/list")
    public String list(Map<String, Object> map){
        map.put("bookType",bookTypeService.selectAll());
        return "bookType/list";
    }

    @RequestMapping(value = "/addUI")
    public String addUI(){
        return "bookType/saveUI";
    }

    @RequestMapping(value = "/updateUI")
    public String updateUI(@RequestParam(value = "id") Long id,Map<String, Object> map){
        map.put("bookType_1",bookTypeService.selectByPrimaryKey(id));
        return "bookType/saveUI";
    }

    @RequestMapping(value = "/add")
    public String add(MultipartFile picture,String name){
        bookTypeService.add(name,picture);
        return "redirect:/bookType/list";
    }

    @RequestMapping(value = "/update")
    public String update(Long bt_id,String name,MultipartFile picture){
        bookTypeService.update(bt_id,name,picture);
        return "redirect:/bookType/list";
    }

    @RequestMapping(value = "/delete")
    public String delete(@RequestParam(value = "id") Long id){
        bookTypeService.deleteByPrimaryKey(id);
        return "redirect:/bookType/list";
    }

}
