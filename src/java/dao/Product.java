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
public class Product {
    
    private Integer productID;
    private String productName;
    private Double productPrice;
    private Integer productTypeID;
    private String productPic;

    public Product() {
    }

    public Integer getProductID() {
        return productID;
    }

    public String getProductName() {
        return productName;
    }

    public Double getProductPrice() {
        return productPrice;
    }

    public Integer getProductTypeID() {
        return productTypeID;
    }

    public void setProductID(Integer productID) {
        this.productID = productID;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public void setProductPrice(Double productPrice) {
        this.productPrice = productPrice;
    }

    public void setProductTypeID(Integer productTypeID) {
        this.productTypeID = productTypeID;
    }

    public String getProductPic() {
        return productPic;
    }

    public void setProductPic(String productPic) {
        this.productPic = productPic;
    }

    @Override
    public String toString() {
        return "Product{" + "productID=" + productID + ", productName=" + productName + ", productPrice=" + productPrice + ", productTypeID=" + productTypeID + '}';
    }
    
    
    
}
