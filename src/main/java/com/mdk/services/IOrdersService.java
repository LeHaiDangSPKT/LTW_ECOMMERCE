package com.mdk.services;

import com.mdk.models.OrderDetails;
import com.mdk.models.Orders;
import com.mdk.paging.Pageble;

import java.util.List;

public interface IOrdersService {
    List<Orders> findAll(String status);
    Orders findOneById(int id);
    Orders findById(int id);
    void updateStatus(String status, int id);
    int count(String status);
    List<Orders> findAll(String status, Pageble pageble);
    int countByStoreId(String status, int storeId);
    List<Orders> findAllByStoreId(String status, int storeId, Pageble pageble);
    List<OrderDetails> findDetailByOrderId(int id);
}
