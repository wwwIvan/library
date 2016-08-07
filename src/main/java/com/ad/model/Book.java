package com.ad.model;

import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by Ivan on 2016/8/6.
 */
@Table(name = "book")
public class Book {
    @Id
    private String id;
    private String name;
    private String author;
    private String publicationDate;
    private String intro;
    private String picture;

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public Book(){}

    public Book(String id, String name, String author, String publicationDate, String intro, String picture) {
        this.id = id;
        this.name = name;
        this.author = author;
        this.publicationDate = publicationDate;
        this.intro = intro;
        this.picture = picture;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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
