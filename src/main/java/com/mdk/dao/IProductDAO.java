package com.mdk.dao;

import com.mdk.models.Product;
import com.mdk.paging.Pageble;

import java.util.List;

public interface IProductDAO {
    void insert(Product product);
    void update(Product product);
    void delete(int id);
    void ban(int id, Boolean state);
    Product findOneByName(String name, int storeId);
    Product findOneById(int id);
    List<Product> getTopSeller(int index);
    List<Product> findAll();
    List<Product> findAll(Pageble pageble, int categoryId, int storeId);
    List<Product> findByCategoryId(int categoryId);
    List<Product> findByStoreId(int storeId);
    int count(int categoryId, int storeId);
    int count(String status);
    List<Product> findAll(Pageble pageble, String status);
    List<Product> findAllByStoreId(int id);
    List<Product> findBySearching(String keyword, int categoryId, int storeId, int rating, double minPrice, double maxPrice);
    List<Product> getTopRating(int index);
    List<Product> findAllProductProhibited();
    List<Product> findAllProductPermitted();
    List<Product> topSeller(int storeId, int top);
}
