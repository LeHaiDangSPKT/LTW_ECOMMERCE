package com.mdk.services;

import com.mdk.models.Orders;
import com.mdk.paging.Pageble;

import java.util.List;

public interface IOrdersService {
    List<Orders> findDelivered();
    List<Orders> findAll(String status);
    List<Orders> findDelivering();
    Orders findOneById(int id);
    int count(String status);
    List<Orders> findAll(String status, Pageble pageble);

}
