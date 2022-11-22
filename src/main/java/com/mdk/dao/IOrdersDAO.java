package com.mdk.dao;

import com.mdk.models.Orders;
import com.mdk.paging.Pageble;

import java.util.List;

public interface IOrdersDAO {
    List<Orders> findDelivered();
    List<Orders> findAll(String status);
    Orders findById(int id);
    void updateStatus(String status, int id);
    List<Orders> findDelivering();
    Orders findOneById(int id);
    int count(String status);
    List<Orders> findAll(String status, Pageble pageble);
}
