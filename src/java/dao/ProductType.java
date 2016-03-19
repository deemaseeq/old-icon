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
public class ProductType {
    
    private Integer productTypeID;
    private String productTypeName;

    public ProductType() {
    }

    public Integer getProductTypeID() {
        return productTypeID;
    }

    public String getProductTypeName() {
        return productTypeName;
    }

    public void setProductTypeID(Integer productTypeID) {
        this.productTypeID = productTypeID;
    }

    public void setProductTypeName(String productTypeName) {
        this.productTypeName = productTypeName;
    }
    
    
    
}
