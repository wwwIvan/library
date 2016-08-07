package com.ad.service;

import com.ad.model.Book;
import org.springframework.web.multipart.MultipartFile;

/**
 * Created by Ivan on 2016/8/2.
 */
public interface BookService extends BaseService<Book>{

    public void add(String name, MultipartFile picture);

}
