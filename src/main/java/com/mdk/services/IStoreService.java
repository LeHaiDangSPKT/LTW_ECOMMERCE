package com.mdk.services;

import com.mdk.models.Product;
import com.mdk.models.Store;
import com.mdk.models.User;

import java.util.List;

public interface IStoreService {
    int totalStores();
    List<Store> top10Store_Orders();
}
