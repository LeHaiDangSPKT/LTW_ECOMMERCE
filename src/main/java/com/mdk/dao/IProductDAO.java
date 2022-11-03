package com.mdk.dao;

import com.mdk.models.Product;

public interface IProductDAO {
    void insert(Product product);
    void update(int id);
    void delete(int id);

}
