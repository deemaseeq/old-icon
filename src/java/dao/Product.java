/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

/**
 *
 * @author dmitriy
 */
@Entity
@Table(name = "product")
public class Product implements Serializable {

    private Integer productID;

    private String productName;

    private Double productPrice;

    private Integer productType;

    private String productPic;

    private String productDescription;

    public Product() {
    }

    @Id
    @Column(name = "product_id")
    @GeneratedValue(generator = "increment")
    @GenericGenerator(name = "increment", strategy = "increment")
    public Integer getProductID() {
        return productID;
    }

    @Column(name = "product_name", nullable = false)
    public String getProductName() {
        return productName;
    }

    @Column(name = "product_price")
    public Double getProductPrice() {
        return productPrice;
    }

    @ManyToOne(fetch = FetchType.EAGER, targetEntity = ProductType.class)
    public Integer getProductType() {
        return productType;
    }

    public void setProductType(Integer productType) {
        this.productType = productType;
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

    @Column(name = "product_pic_src")
    public String getProductPic() {
        return productPic;
    }

    public void setProductPic(String productPic) {
        this.productPic = productPic;
    }

    @Column(name = "product_descr")
    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

}