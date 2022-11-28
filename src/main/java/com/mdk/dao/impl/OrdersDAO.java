package com.mdk.dao.impl;

import com.mdk.connection.DBConnection;
import com.mdk.dao.IOrdersDAO;
import com.mdk.models.*;
import com.mdk.paging.Pageble;
import com.mdk.services.IDeliveryService;
import com.mdk.services.IStoreService;
import com.mdk.services.IUserService;
import com.mdk.services.impl.DeliveryService;
import com.mdk.services.impl.StoreService;
import com.mdk.services.impl.UserService;

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

    public List<Orders> findAll(String status) {
        StringBuilder sql = new StringBuilder("select * from orders ");
        if (!status.equals("all")) {
            sql.append("where status like \"");
            sql.append(""+ status + "\"");
        }
        List<Orders> orders = new ArrayList<>();
        IUserService userService = new UserService();
        IStoreService storeService = new StoreService();
        IDeliveryService deliveryService = new DeliveryService();
        try {
            conn = getConnection();
            ps = conn.prepareStatement(String.valueOf(sql));
            rs = ps.executeQuery();
            while (rs.next()){
                Orders order = new Orders();
                User user = userService.findById(rs.getInt("userId"));
                Store store = storeService.findById(rs.getInt("storeId"));
                Delivery delivery = deliveryService.findById(rs.getInt("deliveryId"));
                order.setId(rs.getInt("id"));
                order.setUserId(rs.getInt("userId"));
                order.setStoreId(rs.getInt("storeId"));
                order.setDeliveryId(rs.getInt("deliveryId"));
                order.setAddress(rs.getString("address"));
                order.setPhone(rs.getString("phone"));
                order.setStatus(rs.getString("status"));
                order.setAmountFromUser(rs.getDouble("amountFromUser"));
                order.setAmountToStore(rs.getDouble("amountToStore"));
                order.setAmountToGD(rs.getDouble("amountToGD"));
                order.setCreatedAt(rs.getTimestamp("createdAt"));
                order.setUpdatedAt(rs.getTimestamp("updatedAt"));
                order.setUser(user);
                order.setStore(store);
                order.setDelivery(delivery);
                orders.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }
    @Override
    public Orders findById(int id) {
        StringBuilder sql = new StringBuilder("select * from orders where id = ?");
        IUserService userService = new UserService();
        IStoreService storeService = new StoreService();
        IDeliveryService deliveryService = new DeliveryService();
        try {
            conn = getConnection();
            ps = conn.prepareStatement(String.valueOf(sql));
            ps.setInt(1, id);
            rs = ps.executeQuery();
            Orders order = new Orders();
            while (rs.next()){
                User user = userService.findById(rs.getInt("userId"));
                Store store = storeService.findById(rs.getInt("storeId"));
                Delivery delivery = deliveryService.findById(rs.getInt("deliveryId"));
                order.setId(rs.getInt("id"));
                order.setAddress(rs.getString("address"));
                order.setPhone(rs.getString("phone"));
                order.setStatus(rs.getString("status"));
                order.setAmountFromUser(rs.getDouble("amountFromUser"));
                order.setAmountToStore(rs.getDouble("amountToStore"));
                order.setAmountToGD(rs.getDouble("amountToGD"));
                order.setCreatedAt(rs.getTimestamp("createdAt"));
                order.setUpdatedAt(rs.getTimestamp("updatedAt"));
                order.setUser(user);
                order.setStore(store);
                order.setDelivery(delivery);
            }
            return order;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    @Override
    public void updateStatus(String status, int id) {
        String sql = "update orders set status = ? where id = ?";
        try {
            conn = getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, status);
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (SQLException e){
            e.printStackTrace();
        }
    }
    @Override
    public List<OrderDetails> findDetailByOrderId(int id) {
        StringBuilder sql = new StringBuilder("select name, description, price, count from product inner join ordersItem on product.id = ordersItem.productId where ordersItem.ordersId = ?");
        try {
            conn = getConnection();
            ps = conn.prepareStatement(String.valueOf(sql));
            ps.setInt(1, id);
            rs = ps.executeQuery();
            List<OrderDetails> orderDetails = new ArrayList<>();
            while (rs.next()){
                OrderDetails orderDetail = new OrderDetails();
                orderDetail.setName(rs.getString("name"));
                orderDetail.setDescription(rs.getString("description"));
                orderDetail.setPrice(rs.getDouble("price"));
                orderDetail.setCount(rs.getInt("count"));
                orderDetails.add(orderDetail);
            }
            return orderDetails;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    @Override
    public Orders findOneById(int id) {
        String sql = "SELECT * FROM orders WHERE id = ?";
        try {
            conn = super.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()) {
                Orders order = new Orders();
                order.setId(rs.getInt("id"));
                order.setUserId(rs.getInt("userId"));
                order.setStoreId(rs.getInt("storeId"));
                order.setDeliveryId(rs.getInt("deliveryId"));
                order.setAddress(rs.getString("address"));
                order.setStatus(rs.getString("status"));
                order.setPhone(rs.getString("phone"));
                order.setAmountFromUser(rs.getDouble("amountFromUser"));
                order.setAmountToStore(rs.getDouble("amountToStore"));
                order.setAmountToGD(rs.getDouble("amountToGD"));
                return  order;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    @Override
    public int count(String status, int storeId) {
        StringBuilder sql = new StringBuilder("select count(*) from orders");
        if (!status.equals("all")) {
            sql.append(" where status like \"");
            sql.append(""+ status + "\"");
            sql.append(" and storeId = " + storeId);
        } else {
            sql.append(" where storeId = " + storeId);
        }
        try {
            conn = getConnection();
            ps = conn.prepareStatement(String.valueOf(sql));
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }
    @Override
    public List<Orders> findAll(String status, Pageble pageble, int storeId) {
        StringBuilder sql = new StringBuilder("select * from orders");
        if (!status.equals("all")) {
            sql.append(" where status like \"");
            sql.append(""+ status + "\"");
            sql.append(" and storeId = " + storeId);
        } else {
            sql.append(" where storeId = " + storeId);
        }
        if (pageble.getSorter() != null) {
            sql.append(" order by "+pageble.getSorter().getSortName()+" "+pageble.getSorter().getSortBy()+"");
        }
        if (pageble.getOffset() != null && pageble.getLimit() != null) {
            sql.append(" limit "+pageble.getOffset()+", "+pageble.getLimit()+"");
        }
        List<Orders> orders = new ArrayList<>();
        IUserService userService = new UserService();
        IStoreService storeService = new StoreService();
        IDeliveryService deliveryService = new DeliveryService();
        try {
            conn = getConnection();
            ps = conn.prepareStatement(String.valueOf(sql));
            rs = ps.executeQuery();
            while (rs.next()){
                Orders order = new Orders();
                User user = userService.findById(rs.getInt("userId"));
                Store store = storeService.findById(rs.getInt("storeId"));
                Delivery delivery = deliveryService.findById(rs.getInt("deliveryId"));
                order.setId(rs.getInt("id"));
                order.setUserId(rs.getInt("userId"));
                order.setStoreId(rs.getInt("storeId"));
                order.setDeliveryId(rs.getInt("deliveryId"));
                order.setAddress(rs.getString("address"));
                order.setPhone(rs.getString("phone"));
                order.setStatus(rs.getString("status"));
                order.setAmountFromUser(rs.getDouble("amountFromUser"));
                order.setAmountToStore(rs.getDouble("amountToStore"));
                order.setAmountToGD(rs.getDouble("amountToGD"));
                order.setCreatedAt(rs.getTimestamp("createdAt"));
                order.setUpdatedAt(rs.getTimestamp("updatedAt"));
                order.setUser(user);
                order.setStore(store);
                order.setDelivery(delivery);
                orders.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }

    @Override
    public int countByStoreId(String status, int storeId) {
        StringBuilder sql = new StringBuilder("select count(*) from orders");
        if (!status.equals("all")) {
            sql.append(" where status like \"");
            sql.append(""+ status + "\" and storeId = " + storeId);
        }
        try {
            conn = getConnection();
            ps = conn.prepareStatement(String.valueOf(sql));
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public List<Orders> findAllByStoreId(String status, int storeId, Pageble pageble) {
        StringBuilder sql = new StringBuilder("select * from orders");
        if (!status.equals("all")) {
            sql.append(" where status like \"");
            sql.append(""+ status + "\"" + " and storeId = "+ storeId);
        }
        if (pageble.getSorter() != null) {
            sql.append(" order by "+pageble.getSorter().getSortName()+" "+pageble.getSorter().getSortBy()+"");
        }
        if (pageble.getOffset() != null && pageble.getLimit() != null) {
            sql.append(" limit "+pageble.getOffset()+", "+pageble.getLimit()+"");
        }
        List<Orders> orders = new ArrayList<>();
        IUserService userService = new UserService();
        IStoreService storeService = new StoreService();
        IDeliveryService deliveryService = new DeliveryService();
        try {
            conn = getConnection();
            ps = conn.prepareStatement(String.valueOf(sql));
            rs = ps.executeQuery();
            while (rs.next()){
                Orders order = new Orders();
                User user = userService.findById(rs.getInt("userId"));
                Store store = storeService.findById(rs.getInt("storeId"));
                Delivery delivery = deliveryService.findById(rs.getInt("deliveryId"));
                order.setId(rs.getInt("id"));
                order.setUserId(rs.getInt("userId"));
                order.setStoreId(rs.getInt("storeId"));
                order.setDeliveryId(rs.getInt("deliveryId"));
                order.setAddress(rs.getString("address"));
                order.setPhone(rs.getString("phone"));
                order.setStatus(rs.getString("status"));
                order.setAmountFromUser(rs.getDouble("amountFromUser"));
                order.setAmountToStore(rs.getDouble("amountToStore"));
                order.setAmountToGD(rs.getDouble("amountToGD"));
                order.setCreatedAt(rs.getTimestamp("createdAt"));
                order.setUpdatedAt(rs.getTimestamp("updatedAt"));
                order.setUser(user);
                order.setStore(store);
                order.setDelivery(delivery);
                orders.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }

    @Override
    public List<Orders> ordersNew(int storeId) {
        String sql = "select * from orders where storeId = ? and status like \"not-processed\" order by createdAt " +
                "DESC limit 4";
        List<Orders> orders = new ArrayList<>();
        IUserService userService = new UserService();
        IStoreService storeService = new StoreService();
        IDeliveryService deliveryService = new DeliveryService();
        try {
            conn = getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, storeId);
            rs = ps.executeQuery();
            while (rs.next()){
                Orders order = new Orders();
                User user = userService.findById(rs.getInt("userId"));
                Store store = storeService.findById(rs.getInt("storeId"));
                Delivery delivery = deliveryService.findById(rs.getInt("deliveryId"));
                order.setId(rs.getInt("id"));
                order.setUserId(rs.getInt("userId"));
                order.setStoreId(rs.getInt("storeId"));
                order.setDeliveryId(rs.getInt("deliveryId"));
                order.setAddress(rs.getString("address"));
                order.setPhone(rs.getString("phone"));
                order.setStatus(rs.getString("status"));
                order.setAmountFromUser(rs.getDouble("amountFromUser"));
                order.setAmountToStore(rs.getDouble("amountToStore"));
                order.setAmountToGD(rs.getDouble("amountToGD"));
                order.setCreatedAt(rs.getTimestamp("createdAt"));
                order.setUpdatedAt(rs.getTimestamp("updatedAt"));
                order.setUser(user);
                order.setStore(store);
                order.setDelivery(delivery);
                orders.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }

}
