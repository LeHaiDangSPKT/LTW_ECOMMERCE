package com.mdk.services;

import com.mdk.models.Product;
import com.mdk.paging.Pageble;

import java.util.List;

public interface IProductService {
    List<Product> findAllProductProhibited();
    List<Product> findAllProductPermited();
    void insert(Product product);
    void update(Product product);
    void delete(int id);
    Product findOneByName(String name, int storeId);
    List<Product> findAll();
    List<Product> findAll(Pageble pageble, int categoryId);
    List<Product> findByCategoryId(int categoryId);
    int count(int categoryId);
}
