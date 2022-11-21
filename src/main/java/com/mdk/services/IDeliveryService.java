package com.mdk.services;

import com.mdk.models.Delivery;

import java.util.List;

public interface IDeliveryService {
    List<Delivery> findAll();
    Delivery getOneById (int id);
    void insert(Delivery delivery);
    void edit(Delivery delivery);
    void deleteSoft(int id);
    void delete(int id);

    void restore(int id);
    void updateStatus(Delivery delivery);
}
