package com.mdk.services;

import com.mdk.models.Product;
import com.mdk.models.Store;
import com.mdk.models.Store_1000;
import com.mdk.models.User;

import java.util.List;

public interface IStoreService {
    List<Store> findAll();
    List<Store_1000> find1000StoresLatestCreationTime();
    int totalStores();
    List<Store> topStores();
    Long createStore (Store store);
    Store findStoreById(long id);
    void updateStore (Store store);
    User findOwnerInfo(long id);
    List<User> findAllStaff(long id);
    void insertStaff(long storeId, long userId);
    void deleteStore(long id);
    List<Product> findAllProductOfStore(long id);
}
