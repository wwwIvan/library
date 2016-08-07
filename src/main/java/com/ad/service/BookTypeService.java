package com.ad.service;

import com.ad.model.BookType;
import org.springframework.web.multipart.MultipartFile;

/**
 * Created by Ivan on 2016/8/2.
 */
public interface BookTypeService extends BaseService<BookType>{

    public void add(String name,MultipartFile picture);

}
