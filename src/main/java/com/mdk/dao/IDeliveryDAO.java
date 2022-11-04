package com.mdk.dao;


import com.mdk.models.Delivery;

import java.util.List;

public interface IDeliveryDAO {
    List<Delivery> findAll();
    void insert(Delivery delivery);
    void edit(Delivery delivery);
    void deleteSoft(Delivery delivery);
    void restore(Delivery delivery);

    List<Delivery> findDelivering();
    void updateStatus(Delivery delivery);
}
