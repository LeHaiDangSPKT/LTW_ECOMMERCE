package com.mdk.services.impl;

import com.mdk.dao.IDeliveryDAO;
import com.mdk.dao.impl.DeliveryDAO;
import com.mdk.models.Delivery;
import com.mdk.services.IDeliveryService;

public class DeliveryService implements IDeliveryService {
    IDeliveryDAO deliveryDAO = new DeliveryDAO();
    @Override
    public Delivery findById(int id) {
        return deliveryDAO.findById(id);
    }
}
