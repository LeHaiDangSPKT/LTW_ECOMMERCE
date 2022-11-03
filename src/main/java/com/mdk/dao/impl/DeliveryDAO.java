package com.mdk.dao.impl;

import com.mdk.connection.DBConnection;
import com.mdk.dao.IDeliveryDAO;
import com.mdk.models.Delivery;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DeliveryDAO extends DBConnection implements IDeliveryDAO {
    public Connection conn = null;
    public PreparedStatement ps = null;
    public ResultSet rs = null;
    @Override
    public List<Delivery> findALL() {
        String sql = "SELECT name, description, price FROM delivery";
        List<Delivery> deliveries = new ArrayList<Delivery>();
        try {
            conn = super.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()) {
                Delivery delivery = new Delivery();
//                delivery.setName(rs.getString("name"));
//                delivery.setDescription(rs.getString("description"));
//                delivery.setPrice(rs.getBigDecimal("price"));
                deliveries.add(delivery);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return deliveries;
    }

    @Override
    public void insert(Delivery delivery) {
        String sql = "INSERT INTO delivery(name, description, price) VALUES (?,?,?)";
        try {
            conn = super.getConnection();
            ps = conn.prepareStatement(sql);
//            ps.setString(1, delivery.getName());
//            ps.setString(2, delivery.getDescription());
//            ps.setBigDecimal(3, delivery.getPrice());

            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void edit(Delivery delivery) {
        String sql = "UPDATE delivery SET name = ?, description = ?, price = ? WHERE _id = ?";
        try {
            conn = super.getConnection();
            ps = conn.prepareStatement(sql);
//            ps.setString(1, delivery.getName());
//            ps.setString(2, delivery.getDescription());
//            ps.setBigDecimal(3, delivery.getPrice());
//            ps.setLong(4, delivery.getId());

            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteSoft(Delivery delivery) {
        String sql = "UPDATE delivery SET isDeleted = true WHERE _id = ?";
        try {
            conn = super.getConnection();
            ps = conn.prepareStatement(sql);
//            ps.setLong(1, delivery.getId());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void restore(Delivery delivery) {
        String sql = "UPDATE delivery SET isDeleted = false WHERE _id = ?";
        try {
            conn = super.getConnection();
            ps = conn.prepareStatement(sql);
//            ps.setLong(1, delivery.getId());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
