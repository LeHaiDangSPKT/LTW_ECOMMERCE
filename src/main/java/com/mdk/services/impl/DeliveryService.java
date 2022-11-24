package com.mdk.services.impl;

import com.mdk.dao.IDeliveryDAO;
import com.mdk.dao.impl.DeliveryDAO;
import com.mdk.models.Delivery;
import com.mdk.paging.Pageble;
import com.mdk.services.IDeliveryService;
import java.util.List;

public class DeliveryService implements IDeliveryService {
    IDeliveryDAO deliveryDAO = new DeliveryDAO();

    @Override
    public List<Delivery> findAll() {
        return deliveryDAO.findAll();
    }

    @Override
    public Delivery findById(int id) {
        return deliveryDAO.findById(id);
    }

    @Override
    public int count(String state) {
        return deliveryDAO.count(state);
    }

    @Override
    public List<Delivery> findAll(Pageble pageble, String state) {
        return deliveryDAO.findAll(pageble, state);
    }

    @Override
    public void insert(Delivery delivery) {
        deliveryDAO.insert(delivery);
    }

    @Override
    public void edit(Delivery delivery) {
        deliveryDAO.edit(delivery);
    }

    @Override
    public void restore(int id) {
        deliveryDAO.restore(id);
    }

    @Override
    public void deleteSoft(int id) {
        deliveryDAO.deleteSoft(id);
    }

    @Override
    public void delete(int id) {
        deliveryDAO.delete(id);
    }


    @Override
    public void updateStatus(Delivery delivery) {
        deliveryDAO.updateStatus(delivery);
    }

}
