package com.mdk.services;

import com.mdk.models.Product;
import com.mdk.models.Store;
import com.mdk.models.User;

import java.util.List;

public interface IStoreService {
//    List<Store> findAll();
    Store findById(int id);
    void insert(Store store);
    void update(Store store);
    int count(int userId);
    Store findByUserId(int userId);
    int totalStores();
    List<Store> topStores();
}
