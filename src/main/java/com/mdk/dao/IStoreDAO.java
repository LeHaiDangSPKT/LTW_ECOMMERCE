
package com.mdk.dao;

import com.mdk.models.Product;
import com.mdk.models.Store;
import com.mdk.models.User;

import java.util.List;

public interface IStoreDAO {
    void insert(Store store);
    void update(Store store);
    int count(int userId);
    Store findByUserId(int userId);
    Store findById(int id);
//    List<Store_1000> find1000StoresLatestCreationTime();
    int totalStores();
    List<Store> topStores();
}
