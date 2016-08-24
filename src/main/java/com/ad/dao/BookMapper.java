package com.ad.dao;

import com.ad.model.Book;
import com.ad.util.BaseMapper;

import java.util.List;

/**
 * Created by Ivan on 2016/8/2.
 */
public interface BookMapper extends BaseMapper<Book> {
    public void add(Book book);
    public void update(Book book);
    public Book selectBookFetchBookType(Long b_id);
    public List<Book> selectBookByForeignKey(Long bt_id);
    public void deleteByForeignKey(Long bt_id);
}
