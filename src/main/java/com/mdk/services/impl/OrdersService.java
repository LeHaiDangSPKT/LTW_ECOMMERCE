package com.mdk.services.impl;

import com.mdk.dao.IOrdersDAO;
import com.mdk.dao.impl.OrdersDAO;
import com.mdk.models.OrderDetails;
import com.mdk.models.Orders;
import com.mdk.paging.Pageble;
import com.mdk.services.*;

import java.util.List;

public class OrdersService implements IOrdersService {
    IOrdersDAO ordersDAO = new OrdersDAO();
    @Override
    public List<Orders> findAll(String status) {
        return ordersDAO.findAll(status);
    }
    @Override
    public Orders findOneById(int id) {
        return ordersDAO.findOneById(id);
    }

    @Override
    public Orders findById(int id) {
        return ordersDAO.findById(id);
    }

    @Override
    public void updateStatus(String status, int id) {
        ordersDAO.updateStatus(status, id);
    }

    @Override
    public int count(String status, int storeId) {
        return ordersDAO.count(status, storeId);
    }
    @Override
    public List<Orders> findAll(String status, Pageble pageble, int storeId) {
        return ordersDAO.findAll(status, pageble, storeId);
    }

    @Override
    public int countByStoreId(String status, int storeId) {
        return ordersDAO.countByStoreId(status, storeId);
    }

    @Override
    public List<Orders> findAllByStoreId(String status, int storeId, Pageble pageble) {
        return ordersDAO.findAllByStoreId(status, storeId, pageble);
    }

    @Override
    public List<OrderDetails> findDetailByOrderId(int id) {
        return ordersDAO.findDetailByOrderId(id);
    }

    @Override
    public List<Orders> ordersNew(int storeId) {
        return ordersDAO.ordersNew(storeId);
    }

}
