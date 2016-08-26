package com.ad.service;

import com.ad.model.Book;
import com.ad.model.UserBookLink;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Ivan on 2016/8/2.
 */
public interface BookService extends BaseService<Book>{
    public Book selectBookFetchBookType(Long b_id);
    public void add(Book book, MultipartFile picture);
    public void update(Book book, MultipartFile picture);
    public void deleteByForeignKey(Long bt_id);
    public List<Book> selectBookByForeignKey(Long bt_id);
    public List<Book> selectBookByList(List<UserBookLink> userBookLinks);
    void addExisting(String b_id);
    void cutExisting(String b_id);
    /**
     * 查询、分页显示书籍
     * @param request
     * @param model
     */
    void showBooksByPage(HttpServletRequest request, Model model);
    /**
     * 根据外键查询、分页显示书籍
     * @param request
     * @param model
     */
    void showTypeBooksByPage(HttpServletRequest request, Model model,Long bt_id);

}
