package com.mdk.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mdk.connection.DBConnection;
import com.mdk.dao.IOrdersItemDAO;
import com.mdk.models.OrdersItem;

public class OrdersItemDAO extends DBConnection implements IOrdersItemDAO{
	public Connection conn = null;
    public PreparedStatement ps = null;
    public ResultSet rs = null;
    
	@Override
	public void insert(OrdersItem orderItem) {
		String sql = "INSERT INTO OrdersItem (ordersId, productId, count) "
				+ "VALUE (?,?,?)";
        try {
            conn = getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, orderItem.getOrdersId());
            ps.setInt(2, orderItem.getProductId());
            ps.setInt(3, orderItem.getCount());
            ps.executeUpdate();
        } catch (SQLException e){
            e.printStackTrace();
        }
	}

}
