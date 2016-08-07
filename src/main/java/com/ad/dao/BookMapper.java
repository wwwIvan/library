package com.ad.dao;

import com.ad.model.Book;
import com.ad.util.BaseMapper;

/**
 * Created by Ivan on 2016/8/2.
 */
public interface BookMapper extends BaseMapper<Book> {
    public void add(Book book);
}
