package com.ad.model;

import javax.persistence.Table;

/**
 * Created by Ivan on 2016/8/25.
 */
@Table(name = "user_book")
public class UserBookLink {

    private Long u_id;
    private String b_id;

    public UserBookLink(){}

    public UserBookLink(Long u_id) {
        this.u_id = u_id;
    }

    public Long getU_id() {
        return u_id;
    }

    public void setU_id(Long u_id) {
        this.u_id = u_id;
    }

    public String getB_id() {
        return b_id;
    }

    public void setB_id(String b_id) {
        this.b_id = b_id;
    }
}
