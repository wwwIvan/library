package com.ad.service;

import com.ad.model.Book;
import org.springframework.web.multipart.MultipartFile;

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
}
