
package com.mdk.dao.impl;

import com.mdk.connection.DBConnection;
import com.mdk.dao.IProductDAO;
import com.mdk.models.Product;
import com.mdk.models.Store;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class ProductDAO extends DBConnection implements IProductDAO {
    public Connection conn = null;
    public PreparedStatement ps = null;
    public ResultSet rs = null;
    @Override
    public List<Product> findAllProductProhibited() {
        String sql = "SELECT * FROM product WHERE isActive = 'false'";
        List<Product> products = new ArrayList<Product>();
        try {
            Connection getConnection = super.getConnection();
            PreparedStatement pStatement = getConnection.prepareStatement(sql);
            ResultSet resultSet = pStatement.executeQuery();
            while(resultSet.next()) {
                Product product = new Product();
                product.setName(resultSet.getString("name"));
                product.setDescription(resultSet.getString("description"));
                product.setPrice(resultSet.getBigDecimal("price"));
                product.setQuantity(resultSet.getInt("quantity"));
                product.setSold(resultSet.getInt("sold"));
                products.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }

    @Override
    public List<Product> findAllProductPermited() {
        String sql = "SELECT * FROM product WHERE isActive = 'true'";
        List<Product> products = new ArrayList<Product>();
        try {
            Connection getConnection = super.getConnection();
            PreparedStatement pStatement = getConnection.prepareStatement(sql);
            ResultSet resultSet = pStatement.executeQuery();
            while(resultSet.next()) {
                Product product = new Product();
                product.setName(resultSet.getString("name"));
                product.setDescription(resultSet.getString("description"));
                product.setPrice(resultSet.getBigDecimal("price"));
                product.setQuantity(resultSet.getInt("quantity"));
                product.setSold(resultSet.getInt("sold"));
                products.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }

    @Override
    public void update(Product product) {
        StringBuilder sql = new StringBuilder("update product set name = ?, description = ?, ");
        sql.append("price = ?, promotionalPrice = ?, quantity = ?, sold = ?, categoryId = ? where _id = ?");
        try {
            conn = getConnection();
            ps = Objects.requireNonNull(conn).prepareStatement(String.valueOf(sql));
            ps.setString(1, product.getName());
            ps.setString(2, product.getDescription());
            ps.setBigDecimal(3, product.getPrice());
            ps.setBigDecimal(4, product.getPromotionalPrice());
            ps.setInt(5, product.getQuantity());
            ps.setInt(6, product.getSold());
            ps.setLong(7, product.getCategoryId());
            ps.setLong(8, product.getId());

            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public int totalProductByStore(long storeId) {
        String sql = "select count(*), storeId from product where storeId = ? group by(storeId)";
        int total = 0;
        try {
            conn = getConnection();
            ps = conn.prepareStatement(sql);
            ps.setLong(1, storeId);
            rs = ps.executeQuery();
            while (rs.next()){
                total = rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return total;
    }

}
