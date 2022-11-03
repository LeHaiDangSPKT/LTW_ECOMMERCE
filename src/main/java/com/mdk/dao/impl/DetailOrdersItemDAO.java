package com.mdk.dao.impl;

import com.mdk.connection.DBConnection;
import com.mdk.dao.IDetailOrdersItemDAO;
import com.mdk.models.DetailOrdersItem;
import com.mdk.models.OrdersItem;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DetailOrdersItemDAO extends DBConnection implements IDetailOrdersItemDAO {
    public Connection conn = null;
    public PreparedStatement ps = null;
    public ResultSet rs = null;
    @Override
    public DetailOrdersItem findOneByOrderId(int id) {
        String sql = "SELECT productId, name, count, price, status FROM product INNER JOIN ordersItem  " +
                "ON productId = product._id INNER JOIN orders ON" +
                "orderId = orders._id WHERE orderId = ?";
        try {
            conn = super.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setLong(1, id);
            rs = ps.executeQuery();
            while(rs.next()) {
                DetailOrdersItem detailOrdersItem = new DetailOrdersItem();
//                detailOrdersItem.setProductId(rs.getLong("productId"));
                detailOrdersItem.setName(rs.getString("name"));
                detailOrdersItem.setCount(rs.getInt("count"));
//                detailOrdersItem.setPrice(rs.getBigDecimal("price"));
//                detailOrdersItem.setStatus(rs.getString("status"));
                return detailOrdersItem;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
