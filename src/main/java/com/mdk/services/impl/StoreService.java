package com.mdk.services.impl;

import com.mdk.dao.IStoreDAO;
import com.mdk.dao.impl.StoreDAO;
import com.mdk.models.Store;
import com.mdk.services.IStoreService;

import java.util.List;

public class StoreService implements IStoreService {
    IStoreDAO storeDAO = new StoreDAO();
    @Override
    public List<Store> findAll() {
        return null;
    }

    @Override
    public Store findById(int id) {
        return storeDAO.findById(id);
    }

    @Override
    public int totalStores() {
        return 0;
    }

    @Override
    public List<Store> topStores() {
        return null;
    }
}
