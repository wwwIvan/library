package com.ad.model;

import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.util.List;

/**
 * Created by Ivan on 2016/8/2.
 */
@Table(name = "user")
public class User {

    @Id
    private Long u_id;
    private String account;
    private String password;
    private String userName;
    private String idCard;
    private Long existing;
    @Transient
    private List<Book> bookList;

    public Long getExisting() {
        return existing;
    }

    public void setExisting(Long existing) {
        this.existing = existing;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Long getU_id() {
        return u_id;
    }

    public void setU_id(Long u_id) {
        this.u_id = u_id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public List<Book> getBookList() {
        return bookList;
    }

    public void setBookList(List<Book> bookList) {
        this.bookList = bookList;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public User(Long u_id, String account, String password, String userName, String idCard, Long existing) {
        this.u_id = u_id;
        this.account = account;
        this.password = password;
        this.userName = userName;
        this.idCard = idCard;
        this.existing = existing;
    }

    public User(){}
}
