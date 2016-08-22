package com.ad.service.Impl;

import com.ad.dao.BookTypeMapper;
import com.ad.model.BookType;
import com.ad.service.BookTypeService;
import com.ad.util.BaseMapper;
import com.ad.util.FileUploadUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

/**
 * Created by Ivan on 2016/8/5.
 */
@Service
public class BookTypeServiceImpl extends BaseServiceImpl<BookType> implements BookTypeService {

    @Autowired
    private BookTypeMapper bookTypeMapper;

    protected BaseMapper<BookType> getBaseMapper() {
        return bookTypeMapper;
    }

    public BookType selectBookTypeFetchBook(Long bt_id) {
        return bookTypeMapper.selectBookTypeFetchBook(bt_id);
    }

    public void update(Long id, String name, MultipartFile picture) {
        BookType bookType = new BookType();
        bookType.setName(name);
        bookType.setBt_id(id);
        if(picture != null){
            FileUploadUtil.uploadBookTypePicture(picture,bookType);
        }
        bookTypeMapper.update(bookType);
    }

    public void add(String name, MultipartFile picture) {
        BookType bookType = new BookType();
        bookType.setName(name);
        if(picture != null){
            FileUploadUtil.uploadBookTypePicture(picture,bookType);
        }
        bookTypeMapper.add(bookType);
    }
}
