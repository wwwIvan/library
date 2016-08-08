package com.ad.model;

import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.util.List;

/**
 * Created by Ivan on 2016/8/6.
 */
@Table(name = "booktype")
public class BookType {
    @Id
    private Long bt_id;
    private String picture;
    private String name;
    @Transient
    private List<Book> book_id;

    public List<Book> getBook_id() {
        return book_id;
    }

    public void setBook_id(List<Book> book_id) {
        this.book_id = book_id;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BookType(){}

    public Long getBt_id() {
        return bt_id;
    }

    public void setBt_id(Long bt_id) {
        this.bt_id = bt_id;
    }

    public BookType(Long bt_id, String picture, String name, List<Book> book_id) {
        this.bt_id = bt_id;
        this.picture = picture;
        this.name = name;
        this.book_id = book_id;
    }

}
