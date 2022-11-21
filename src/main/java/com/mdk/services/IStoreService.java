package com.mdk.services;

import com.mdk.models.Store;

import java.util.List;

public interface IStoreService {
    Store findById(int id);
    void insert(Store store);
    void update(Store store);
    int count(int userId);
    Store findByUserId(int userId);

    int totalStores();
    List<Store> top10Store_Orders();
}
