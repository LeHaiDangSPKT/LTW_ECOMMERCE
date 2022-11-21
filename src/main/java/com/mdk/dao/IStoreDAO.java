
package com.mdk.dao;

import com.mdk.models.Store;

import java.sql.SQLException;
import java.util.List;

public interface IStoreDAO {
    void insert(Store store);
    void update(Store store);
    int count(int userId);
    Store findByUserId(int userId);
    Store findById(int id);
    int totalStores();
    List<Store> top10Store_Orders();
}
