package com.ad.model;

import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by Ivan on 2016/8/5.
 */
@Table(name = "admin")
public class Admin {
    @Id
    private Long id;
    private String account;
    private String password;

    public Admin(Long id, String account, String password) {
        this.id = id;
        this.account = account;
        this.password = password;
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

    public Admin(){}
}
