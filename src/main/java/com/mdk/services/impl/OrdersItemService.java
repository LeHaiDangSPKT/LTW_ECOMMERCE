package com.mdk.services.impl;

import com.mdk.dao.IOrdersItemDAO;
import com.mdk.dao.impl.OrdersItemDAO;
import com.mdk.models.OrdersItem;
import com.mdk.services.IOrdersItemService;

public class OrdersItemService implements IOrdersItemService{
	IOrdersItemDAO ordersItemDAO = new OrdersItemDAO();
	
	@Override
	public void insert(OrdersItem orderItem) {
		ordersItemDAO.insert(orderItem);
	}

}
