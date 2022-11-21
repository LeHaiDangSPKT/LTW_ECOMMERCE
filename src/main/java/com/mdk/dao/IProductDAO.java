package com.mdk.dao;

import com.mdk.models.Product;

import java.util.List;

public interface IProductDAO {
    List<Product> findAllProductProhibited();
    List<Product> findAllProductPermitted();
    void insert(Product product);
    void update(Product product);
    void delete(int id);
    Product findOneByName(String name, int storeId);
    List<Product> getTopSeller(int index);
    List<Product> findAll();
    List<Product> findByCategoryId(int categoryId);

}
