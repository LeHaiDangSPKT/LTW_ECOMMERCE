package com.mdk.services;

import com.mdk.models.OrderDetails;
import com.mdk.models.Orders;
import com.mdk.paging.Pageble;

import java.util.List;

public interface IOrdersService {
	void insert(Orders order);
    List<Orders> findAll(String status);
    Orders findOneById(int id);
    Orders findById(int id);
    void updateStatus(String status, int id);
<<<<<<< HEAD
    int count(String status, int storeId);
    int count(String status);
    List<Orders> findAll(String status, Pageble pageble, int storeId);
=======
    int count(String status, int storeId, String start, String end);
    List<Orders> findAll(String status, Pageble pageble, int storeId, String start, String end);
>>>>>>> 1a454bad26644af09fa4dc0d7aff3362721ad5e2
    int countByStoreId(String status, int storeId);
    List<Orders> findAllByStoreId(String status, int storeId, Pageble pageble);
    List<OrderDetails> findDetailByOrderId(int id);
    List<Orders> ordersNew(int storeId);
	int currentIndex();
}
