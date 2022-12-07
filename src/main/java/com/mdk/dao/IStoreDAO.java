
package com.mdk.dao;

import com.mdk.models.Product;
import com.mdk.models.Store;

import java.sql.SQLException;
import java.util.List;

public interface IStoreDAO {
    void insert(Store store);
    void update(Store store);
    int count(int userId);
    Store findByUserId(int userId);
    int totalCustomer(int storeId);
    int totalProduct(int storeId);
    int totalOrders(int storeId);
    int totalSale(int storeId);
    double revenueOfMonth(int storeId, String month, String year);
    Store findById(int id);
    int totalStores();
    List<Store> top10Store_Orders();
    List<Store> findAll();
    List<Store> findAllByName(String keyword);
    void updateWallet(int id, double eWallet);
}
