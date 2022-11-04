package com.mdk.services.impl;

import com.mdk.dao.IStoreDAO;
import com.mdk.dao.IUserDAO;
import com.mdk.dao.impl.StoreDAO;
import com.mdk.dao.impl.UserDAO;
import com.mdk.models.Product;
import com.mdk.models.Store;
import com.mdk.models.User;
import com.mdk.services.IStoreService;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class StoreService implements IStoreService {
    IStoreDAO storeDAO = new StoreDAO();
    @Override
    public List<Store> findAll() {
        return storeDAO.findAll();
    }

    /*@Override
    public List<Store_1000> find1000StoresLatestCreationTime() {
        return storeDAO.find1000StoresLatestCreationTime();
    }*/

    @Override
    public int totalStores() {
        return storeDAO.totalStores();
    }

    @Override
    public List<Store> topStores() {
        return storeDAO.topStores();
    }

}
