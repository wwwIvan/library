package com.ad.model;

import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by Ivan on 2016/8/2.
 */
@Table(name = "user")
public class User {

    @Id
    private Long id;
    private String account;
    private String password;
    private String userName;
    private String sex;
    private String userId;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public User(){}

    public User(Long id, String account, String password, String userName, String sex, String userId) {
        this.id = id;
        this.account = account;
        this.password = password;
        this.userName = userName;
        this.sex = sex;
        this.userId = userId;
    }

}
