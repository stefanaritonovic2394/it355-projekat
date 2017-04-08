/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pcshop.dao;

import com.pcshop.model.Product;
import java.util.List;

/**
 *
 * @author stefa
 */
public interface ProductDao {
    
    public List<Product> getProductList();
    public Product getProductById(int id);
    public Product addProduct(Product product);
    public void editProduct(Product product);
    public void deleteProduct(Product product);
    public int getCount();
    
}
