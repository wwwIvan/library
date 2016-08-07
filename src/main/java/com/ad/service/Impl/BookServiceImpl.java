package com.ad.service.Impl;

import com.ad.dao.BookMapper;
import com.ad.model.Book;
import com.ad.service.BookService;
import com.ad.util.BaseMapper;
import com.ad.util.FileUploadUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

/**
 * Created by Ivan on 2016/8/5.
 */
@Service
public class BookServiceImpl extends BaseServiceImpl<Book> implements BookService {

    @Autowired
    private BookMapper bookMapper;

    protected BaseMapper<Book> getBaseMapper() {
        return bookMapper;
    }

    public void add(String name, MultipartFile picture) {
        Book book = new Book();
        book.setName(name);
        if(picture != null){
            FileUploadUtil.uploadBookPicture(picture,book);
        }
        bookMapper.add(book);
    }
}
