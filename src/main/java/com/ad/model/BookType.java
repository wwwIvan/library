package com.ad.model;

import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by Ivan on 2016/8/6.
 */
@Table(name = "booktype")
public class BookType {
    @Id
    private Long id;
    private String picture;
    private String name;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public BookType(Long id, String picture, String name) {
        this.id = id;
        this.picture = picture;
        this.name = name;
    }
}
