package com.mdk.services.impl;

import com.mdk.dao.IOrdersDAO;
import com.mdk.dao.impl.OrdersDAO;
import com.mdk.models.Orders;
import com.mdk.services.IOrdersService;

import java.util.List;

public class OrdersService implements IOrdersService {
    IOrdersDAO ordersDAO = new OrdersDAO();
    @Override
    public List<Orders> findDelivered() {
        return ordersDAO.findDelivered();
    }

    @Override
    public List<Orders> findDelivering() {
        return ordersDAO.findDelivering();
    }

    @Override
    public Orders findOneById(int id) {
        return ordersDAO.findOneById(id);
    }

}
