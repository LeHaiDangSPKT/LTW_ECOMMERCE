package com.mdk.dao.impl;

import com.mdk.connection.DBConnection;
import com.mdk.dao.IProductDAO;
import com.mdk.models.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductDAO extends DBConnection implements IProductDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    @Override
    public void insert(Product product) {
        String sql = "insert into product(name, description, price, promotionalPrice, \n" +
                "quantity, sold, isActive, categoryId, storeId, rating)\n" +
                "values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            conn = getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,product.getName());
            ps.setString(2, product.getDescription());
            ps.setDouble(3, product.getPrice());
            ps.setDouble(4,product.getPromotionalPrice());
            ps.setInt(5,product.getQuantity());
            ps.setInt(6, product.getSold());
            ps.setBoolean(7, product.isActive());
            ps.setInt(8,product.getCategoryId());
            ps.setInt(9,product.getStoreId());
            ps.setInt(10, product.getRating());
            ps.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void update(int id) {

    }

    @Override
    public void delete(int id) {

    }
}
