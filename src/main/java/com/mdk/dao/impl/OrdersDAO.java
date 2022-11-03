package com.mdk.dao.impl;

import com.mdk.connection.DBConnection;
import com.mdk.dao.IOrdersDAO;
import com.mdk.models.Orders;
import com.mdk.models.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrdersDAO extends DBConnection implements IOrdersDAO {
    public Connection conn = null;
    public PreparedStatement ps = null;
    public ResultSet rs = null;
    @Override
    public List<Orders> findAll() {
        String sql = "SELECT * FROM orders";
        List<Orders> orders = new ArrayList<Orders>();
        try {
            conn = super.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()) {
                Orders oder = new Orders();
//                oder.setUserId(rs.getLong("userId"));
//                oder.setStoreId(rs.getLong("storeId"));
//                oder.setDeliveryId(rs.getLong("deliveryId"));
                oder.setAddress(rs.getString("address"));
                oder.setPhone(rs.getInt("phone"));
                oder.setStatus(rs.getString("status"));
                orders.add(oder);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return orders;
    }

    @Override
    public List<Orders> findDelivering() {
        String sql = "SELECT * FROM orders WHERE status = 'shipped'";
        List<Orders> orders = new ArrayList<Orders>();
        try {
            conn = super.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()) {
                Orders oder = new Orders();
//                oder.setUserId(rs.getLong("userId"));
//                oder.setStoreId(rs.getLong("storeId"));
//                oder.setDeliveryId(rs.getLong("deliveryId"));
                oder.setAddress(rs.getString("address"));
                oder.setPhone(rs.getInt("phone"));
                oder.setStatus(rs.getString("status"));
                orders.add(oder);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return orders;
    }

    @Override
    public void updateStatus(Orders orders) {
        String sql = "UPDATE user SET status = ?";
        List<User> users = new ArrayList<User>();
        try {
            conn = super.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, orders.getStatus());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


}
