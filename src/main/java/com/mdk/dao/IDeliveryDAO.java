package com.mdk.dao;

import com.mdk.models.Category;
import com.mdk.models.Delivery;
import com.mdk.paging.Pageble;

import java.util.List;

public interface IDeliveryDAO {
    List<Delivery> findAll();
    void insert(Delivery delivery);
    void edit(Delivery delivery);
    void deleteSoft(int id);
    void delete(int id);
    void restore(int id);
    void updateStatus(Delivery delivery);
    Delivery findById(int id);
    int count(String state, String keyword);
    List<Delivery> findAll(Pageble pageble, String state, String keyword);
}
