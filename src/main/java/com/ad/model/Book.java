package com.ad.model;

import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.util.List;

/**
 * Created by Ivan on 2016/8/6.
 */
@Table(name = "book")
public class Book {
    @Id
    private String b_id;
    private String name;
    private String author;
    private String publication_date;
    private String intro;
    private String picture;
    private Long bt_id;
    private Long existing;
    @Transient
    private BookType bookType;
    @Transient
    private List<User> users;

    public Long getExisting() {
        return existing;
    }

    public void setExisting(Long existing) {
        this.existing = existing;
    }

    public BookType getBookType() {
        return bookType;
    }

    public void setBookType(BookType bookType) {
        this.bookType = bookType;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public Book(){}

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    public Book(String b_id, String name, String author, String publication_date, String intro, String picture, Long bt_id, Long existing) {
        this.b_id = b_id;
        this.name = name;
        this.author = author;
        this.publication_date = publication_date;
        this.intro = intro;
        this.picture = picture;
        this.bt_id = bt_id;
        this.existing = existing;
        this.bookType = bookType;
        this.users = users;
    }

    public Book(String name, String author, String publication_date, String intro, String picture, Long bt_id) {
        this.name = name;
        this.author = author;
        this.publication_date = publication_date;
        this.intro = intro;
        this.picture = picture;
        this.bt_id = bt_id;
    }

    public Long getBt_id() {
        return bt_id;
    }

    public void setBt_id(Long bt_id) {
        this.bt_id = bt_id;
    }

    public String getB_id() {
        return b_id;
    }

    public void setB_id(String b_id) {
        this.b_id = b_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPublication_date() {
        return publication_date;
    }

    public void setPublication_date(String publication_date) {
        this.publication_date = publication_date;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

}
