package com.mdk.dao;

import com.mdk.models.OrderDetails;
import com.mdk.models.Orders;
import com.mdk.paging.Pageble;

import java.util.List;

public interface IOrdersDAO {

    List<Orders> findAll(String status);
    Orders findById(int id);
    void updateStatus(String status, int id);
    List<OrderDetails> findDetailByOrderId(int id);
    Orders findOneById(int id);
    int count(String status);
    List<Orders> findAll(String status, Pageble pageble);
    int countByStoreId(String status, int storeId);
    List<Orders> findAllByStoreId(String status, int storeId, Pageble pageble);

}
