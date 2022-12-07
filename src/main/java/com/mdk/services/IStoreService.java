package com.mdk.services;

import com.mdk.models.Orders;
import com.mdk.models.Store;

import java.util.List;

public interface IStoreService {
    Store findById(int id);
    void insert(Store store);
    void update(Store store);
    int count(int userId);
    Store findByUserId(int userId);
    int totalCustomer(int storeId);
    int totalProduct(int storeId);
    int totalOrders(int storeId);
    int totalSale(int storeId);
    double revenueOfMonth(int storeId, String month, String year);
    int totalStores();
    List<Store> top10Store_Orders();
    List<Store> findAll();
    List<Store> findAllByName(String keyword);
    void updateWallet(int id, double eWallet);
}
