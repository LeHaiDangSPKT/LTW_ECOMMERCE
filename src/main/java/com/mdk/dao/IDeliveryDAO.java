package com.mdk.dao;


import com.mdk.models.Delivery;

import java.util.List;

public interface IDeliveryDAO {
    List<Delivery> findAll();
    Delivery  getOneById (int id);

    void insert(Delivery delivery);
    void edit(Delivery delivery);
    void deleteSoft(int id);
    void delete(int id);
    void restore(int id);
    void updateStatus(Delivery delivery);
}
