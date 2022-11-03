
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
            conn = super.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()) {
                Product product = new Product();
//                product.setName(rs.getString("name"));
//                product.setDescription(rs.getString("description"));
//                product.setPrice(rs.getBigDecimal("price"));
//                product.setQuantity(rs.getInt("quantity"));
//                product.setSold(rs.getInt("sold"));
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
            conn = super.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()) {
                Product product = new Product();
//                product.setName(rs.getString("name"));
//                product.setDescription(rs.getString("description"));
//                product.setPrice(rs.getBigDecimal("price"));
//                product.setQuantity(rs.getInt("quantity"));
//                product.setSold(rs.getInt("sold"));
                products.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }


}
