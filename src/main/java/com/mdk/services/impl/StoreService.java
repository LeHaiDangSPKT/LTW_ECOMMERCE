package com.mdk.services.impl;

import com.mdk.dao.IStoreDAO;
import com.mdk.dao.impl.StoreDAO;
import com.mdk.models.ImageStore;
import com.mdk.models.Store;
import com.mdk.models.User;
import com.mdk.services.IImageStoreService;

import com.mdk.services.IStoreService;

import java.util.List;

public class StoreService implements IStoreService {
    IStoreDAO storeDAO = new StoreDAO();
    IImageStoreService imageStoreService = new ImageStoreService();

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
    public int totalCustomer(int storeId) {
        return storeDAO.totalCustomer(storeId);
    }

    @Override
    public int totalProduct(int storeId) {
        return storeDAO.totalProduct(storeId);
    }

    @Override
    public int totalOrders(int storeId) {
        return storeDAO.totalOrders(storeId);
    }

    @Override
    public int totalSale(int storeId) {
        return storeDAO.totalSale(storeId);
    }

    @Override
    public double revenueOfMonth(int storeId, String month, String year) {
        return storeDAO.revenueOfMonth(storeId, month, year);
    }

    @Override
    public int totalStores() {
        return storeDAO.totalStores();
    }

    @Override
    public List<Store> top10Store_Orders() {
        return storeDAO.top10Store_Orders();
    }

    @Override
    public List<Store> findAll() {
        return storeDAO.findAll();
    }

	@Override
	public List<Store> findAllByName(String keyword) {
		return storeDAO.findAllByName(keyword);
	}

    @Override
    public void updateWallet(int id, double eWallet) {
        storeDAO.updateWallet(id, eWallet);
    }
}
