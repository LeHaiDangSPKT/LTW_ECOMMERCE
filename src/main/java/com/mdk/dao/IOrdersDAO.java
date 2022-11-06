package com.mdk.dao;

import com.mdk.models.Orders;

import java.util.List;

public interface IOrdersDAO {
    List<Orders> findAll(String status);
    Orders findById(int id);
    void updateStatus(String status, int id);
    List<Orders> findDelivering();
    void updateStatus(Orders orders);
}
