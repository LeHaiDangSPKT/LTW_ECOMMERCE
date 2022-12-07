package com.mdk.dao;

import java.util.List;

import com.mdk.models.OrderDetails;
import com.mdk.models.Orders;
import com.mdk.paging.Pageble;

public interface IOrdersDAO {

	void insert(Orders order);
    List<Orders> findAll(String status);
    Orders findById(int id);
    void updateStatus(String status, int id);
    List<OrderDetails> findDetailByOrderId(int id);
    Orders findOneById(int id);
    int count(String status, int storeId, String start, String end);
    List<Orders> findAll(String status, Pageble pageble, int storeId, String start, String end);
    int countByStoreId(String status, int storeId);
    List<Orders> findAllByStoreId(String status, int storeId, Pageble pageble);
    List<Orders> findAllByUser(int userId);
    List<Orders> ordersNew(int storeId);
    int currentIndex();
}
