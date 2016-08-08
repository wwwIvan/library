package com.ad.model;

import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * Created by Ivan on 2016/8/6.
 */
@Table(name = "book")
public class Book {
    @Id
    private String b_id;
    private String name;
    private String author;
    private String publicationDate;
    private String intro;
    private String picture;
    private Long bt_id;
    @Transient
    private BookType bookType;

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

    public Book(String b_id, String name, String author, String publicationDate, String intro, String picture, Long bt_id, BookType bookType) {
        this.b_id = b_id;
        this.name = name;
        this.author = author;
        this.publicationDate = publicationDate;
        this.intro = intro;
        this.picture = picture;
        this.bt_id = bt_id;
        this.bookType = bookType;
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

    public String getPublicationDate() {
        return publicationDate;
    }

    public void setPublicationDate(String publicationDate) {
        this.publicationDate = publicationDate;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }
}
