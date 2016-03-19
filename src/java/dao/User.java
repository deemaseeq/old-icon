/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;
import org.hibernate.annotations.GenericGenerator;

/**
 *
 * @author dmitriy
 */

//@Entity
//@Table(name = "user")
public class User implements Serializable {
    
//    @Id
//    @Column(name = "user_id")
//    @GeneratedValue(generator = "increment")
//    @GenericGenerator(name = "increment", strategy = "increment")
    private Integer userID;
    
//    @Column(name = "user_name")
    private String username;
    
//    @Column(name = "user_password")
    private String password;
    
//    @Column(name = "user_email")
    private String email;
    
//    @ManyToOne
//    @JoinColumn(name = "user_group_id")
    private int userGroupID;
    
//    @Column(name = "user_register_date")
//    @Temporal(javax.persistence.TemporalType.DATE)
    private Date registerDate;

    public User() {
    }

    public Integer getUserID() {
        return userID;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getEmail() {
        return email;
    }

    public int getUserGroupID() {
        return userGroupID;
    }

    public Date getRegisterDate() {
        return registerDate;
    }

    public void setUserID(Integer userID) {
        this.userID = userID;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setUserGroupID(int usergroup) {
        this.userGroupID = usergroup;
    }

    public void setRegisterDate(Date registerDate) {
        this.registerDate = registerDate;
    }
}
