/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

/**
 *
 * @author dmitriy
 */
public class OrderedProduct {
    
    private Integer productID;
    private Integer quantity;
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
