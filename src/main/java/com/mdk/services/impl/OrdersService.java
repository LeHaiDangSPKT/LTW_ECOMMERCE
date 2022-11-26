package com.mdk.services.impl;

import com.mdk.dao.IOrdersDAO;
import com.mdk.dao.impl.OrdersDAO;
import com.mdk.models.Orders;
import com.mdk.paging.Pageble;
import com.mdk.services.*;

import java.util.List;

public class OrdersService implements IOrdersService {
    IOrdersDAO ordersDAO = new OrdersDAO();

    @Override
    public List<Orders> findDelivered() {
        return ordersDAO.findDelivered();
    }
    @Override
    public List<Orders> findAll(String status) {
        return ordersDAO.findAll(status);
    }
    @Override
    public List<Orders> findDelivering() {
        return ordersDAO.findDelivering();
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
    public int count(String status) {
        return ordersDAO.count(status);
    }
    @Override
    public List<Orders> findAll(String status, Pageble pageble) {
        return ordersDAO.findAll(status, pageble);
    }

}
