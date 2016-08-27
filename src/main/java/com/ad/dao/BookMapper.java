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
    void addExisting(String b_id);
    void cutExisting(String b_id);

    /**
     * 书籍分页（限定类型）
     * @param startPos
     * @param pageSize
     * @return
     */
    public List<Book> selectBooksByPageName(Integer startPos, Integer pageSize, String name);
    /**
     * 书籍分页（模糊查询）
     * @param startPos
     * @param pageSize
     * @return
     */
    public List<Book> selectTypeBooksByPage(Integer startPos, Integer pageSize, Long bt_id);
    /**
     * 书籍分页
     * @param startPos
     * @param pageSize
     * @return
     */
    public List<Book> selectBooksByPage(Integer startPos, Integer pageSize);
    /**
     * 取得书籍数量（限模糊查询定类型）
     * @return
     */
    public long getBooksCountByName(String name);
    /**
     * 取得书籍数量（限定类型）
     * @return
     */
    public long getBooksCount(Long bt_id);
    /**
     * 取得书籍数量
     * @return
     */
    public long getTypeBooksCount();

}
