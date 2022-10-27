package com.mdk.services.impl;

import com.mdk.dao.IStoreDAO;
import com.mdk.dao.IUserDAO;
import com.mdk.dao.impl.StoreDAO;
import com.mdk.dao.impl.UserDAO;
import com.mdk.models.Product;
import com.mdk.models.Store;
import com.mdk.models.Store_1000;
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

    @Override
    public List<Store_1000> find1000StoresLatestCreationTime() {
        return storeDAO.find1000StoresLatestCreationTime();
    }

    @Override
    public int totalStores() {
        return storeDAO.totalStores();
    }

    @Override
    public List<Store> topStores() {
        return storeDAO.topStores();
    }

    @Override
    public Long createStore(Store store) {
        store.setCreatedAt(new Timestamp(System.currentTimeMillis()));
        return storeDAO.createStore(store);
    }

    @Override
    public Store findStoreById(long id) {
        return storeDAO.findStoreById(id);
    }

    @Override
    public void updateStore(Store store) {
        store.setUpdatedAt(new Timestamp(System.currentTimeMillis()));
        storeDAO.updateStore(store);
    }

    @Override
    public User findOwnerInfo(long id) {
        return storeDAO.findOwnerInfo(id);
    }

    @Override
    public List<User> findAllStaff(long id) {
        IUserDAO userDAO = new UserDAO();
        List<User> listStaff = new ArrayList<>();
        List<Long> listId = storeDAO.findAllStaff(id);
        for (int i = 0; i < listId.size(); i++) {
            listStaff.add(userDAO.findUserById(listId.get((i))));
        }
        return listStaff;
    }

    @Override
    public void insertStaff(long storeId, long userId) {
        storeDAO.insertStaff(storeId, userId);
    }

    @Override
    public void deleteStore(long id) {
        storeDAO.deleteStore(id);
    }

    @Override
    public List<Product> findAllProductOfStore(long id) {
        return storeDAO.findAllProductOfStore(id);
    }
}
