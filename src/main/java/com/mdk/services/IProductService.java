package com.mdk.services;

import com.mdk.models.Product;

import java.util.List;

public interface IProductService {
    List<Product> findAllProductProhibited();
    List<Product> findAllProductPermited();
    void insert(Product product);
    void update(Product product);
    void delete(int id);
    Product findOneByName(String name, int storeId);
    List<Product> findAll();
    List<Product> findByCategoryId(int categoryId);
}
