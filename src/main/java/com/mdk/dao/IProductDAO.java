package com.mdk.dao;

import com.mdk.models.Product;

import java.util.List;

public interface IProductDAO {
    void insert(Product product);
    void update(Product product);
    void delete(int id);
    List<Product> getTopSeller(int index);
    List<Product> findAll();
    List<Product> findByCategoryId(int categoryId);

}
