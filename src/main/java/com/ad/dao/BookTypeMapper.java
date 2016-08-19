package com.ad.dao;

import com.ad.model.BookType;
import com.ad.util.BaseMapper;

/**
 * Created by Ivan on 2016/8/2.
 */
public interface BookTypeMapper extends BaseMapper<BookType> {
    public void add(BookType bookType);
    public void update(BookType bookType);
}
