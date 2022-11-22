package com.mdk.dao;

import com.mdk.models.Orders;
import com.mdk.models.Product;
import com.mdk.paging.Pageble;

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
    List<Product> findAll(Pageble pageble, int categoryId);
    List<Product> findByCategoryId(int categoryId);
    int count(int categoryId);

}
