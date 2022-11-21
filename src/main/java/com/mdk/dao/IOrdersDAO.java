package com.mdk.dao;

import com.mdk.models.Orders;

import java.util.List;

public interface IOrdersDAO {
    List<Orders> findDelivered();
    List<Orders> findDelivering();

    Orders findOneById(int id);
}
