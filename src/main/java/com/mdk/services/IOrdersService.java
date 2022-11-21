package com.mdk.services;

import com.mdk.models.Orders;

import java.util.List;

public interface IOrdersService {
    List<Orders> findDelivered();
    List<Orders> findDelivering();
    Orders findOneById(int id);

}
