package com.mdk.services.impl;

import com.mdk.dao.IStoreDAO;
import com.mdk.dao.impl.StoreDAO;
import com.mdk.models.ImageStore;
import com.mdk.models.Store;
import com.mdk.services.IImageStoreService;
import com.mdk.services.IStoreService;

import java.util.List;

public class StoreService implements IStoreService {
    IStoreDAO storeDAO = new StoreDAO();
    IImageStoreService imageStoreService = new ImageStoreService();
//    @Override
//    public List<Store> findAll() {
//        return null;
//    }

    @Override
    public Store findById(int id) {
        return storeDAO.findById(id);
    }

    @Override
    public void insert(Store store) {
        storeDAO.insert(store);
        int storeId = storeDAO.findByUserId(store.getOwnerID()).getId();
        for (ImageStore image : store.getImages()){
            image.setStoreId(storeId);
            imageStoreService.insert(image);
        }
    }

    @Override
    public void update(Store store) {
        storeDAO.update(store);
        int storeId = storeDAO.findByUserId(store.getOwnerID()).getId();
        imageStoreService.delete(storeId);
        for (ImageStore image : store.getImages()){
            image.setStoreId(storeId);
            imageStoreService.insert(image);
        }
    }

    @Override
    public int count(int userId) {
        return storeDAO.count(userId);
    }

    @Override
    public Store findByUserId(int userId) {
        return storeDAO.findByUserId(userId);
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
