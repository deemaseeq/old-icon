/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author dmitriy
 */

@Entity
@Table(name = "product_type")
public class ProductType implements Serializable{
    
    
    private Integer productTypeID;
    
    private String productTypeName;

    public ProductType() {
    }

    @Id
    @Column(name = "product_type_id")
    public Integer getProductTypeID() {
        return productTypeID;
    }

    @Column(name = "product_type_name")
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
