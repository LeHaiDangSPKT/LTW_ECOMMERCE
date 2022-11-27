package com.mdk.services;

import com.mdk.models.Delivery;
import com.mdk.paging.Pageble;

import java.util.List;

public interface IDeliveryService {
    List<Delivery> findAll();
    void insert(Delivery delivery);
    void edit(Delivery delivery);
    void deleteSoft(int id);
    void delete(int id);

    void restore(int id);
    void updateStatus(Delivery delivery);
    Delivery findById(int id);
    int count(String state);
    List<Delivery> findAll(Pageble pageble, String state);
}
