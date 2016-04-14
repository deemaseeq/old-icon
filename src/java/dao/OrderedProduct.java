/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.io.Serializable;
import javax.persistence.*;

/**
 *
 * @author dmitriy
 */

@Entity
@Table(name = "ordered_product")
public class OrderedProduct implements Serializable{
    
    @Id
    @ManyToOne(fetch = FetchType.LAZY, targetEntity = Product.class)
    @JoinColumn(name = "product_id", referencedColumnName = "product_id")
    private Integer productID;
    
    @Column(name = "quantity")
    private Integer quantity;
    
    @ManyToOne(fetch = FetchType.LAZY, targetEntity = Order.class)
    @JoinColumn(name = "order_id", referencedColumnName = "order_id")
    private Integer orderID;

    public OrderedProduct() {
    }

    public Integer getProductID() {
        return productID;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public Integer getOrderID() {
        return orderID;
    }

    public void setProductID(Integer productID) {
        this.productID = productID;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public void setOrderID(Integer orderID) {
        this.orderID = orderID;
    }
    
    
    
}
