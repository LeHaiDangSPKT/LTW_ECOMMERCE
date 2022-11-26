package com.mdk.dao;

import com.mdk.models.Orders;
import com.mdk.models.Product;
import com.mdk.models.User;
import com.mdk.paging.Pageble;

import java.util.List;

public interface IProductDAO {
    void insert(Product product);
    void update(Product product);
    void delete(int id);
    Product findOneByName(String name, int storeId);
    Product findOneById(int id);
    List<Product> getTopSeller(int index);
    List<Product> findAll();
    List<Product> findAll(Pageble pageble, int categoryId);
    List<Product> findByCategoryId(int categoryId);
    int count(int categoryId);
    int count(String status);
    List<Product> findAll(Pageble pageble, String status);
}
