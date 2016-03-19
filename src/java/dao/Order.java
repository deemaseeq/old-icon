/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author dmitriy
 */

//@Entity
//@Table(name = "order")
public class Order implements Serializable {
    
//    @Id
//    @Column(name = "order_number")
//    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer orderID;
    
//    @Column(name = "order_date")
//    @Temporal(javax.persistence.TemporalType.DATE)
    private Date orderDate;
    
//    @ManyToOne
//    @JoinColumn(name = "user_id")
    private Integer userID;
    


    public Order() {
    }

    public Integer getOrderID() {
        return orderID;
    }

    public void setOrderID(Integer orderID) {
        this.orderID = orderID;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public Integer getUserID() {
        return userID;
    }


    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public void setUserID(Integer userID) {
        this.userID = userID;
    }
    
    
}
