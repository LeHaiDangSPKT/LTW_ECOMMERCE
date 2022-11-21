package com.mdk.dao.impl;

import com.mdk.connection.DBConnection;
import com.mdk.dao.ICategoryDAO;
import com.mdk.models.Category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAO extends DBConnection implements ICategoryDAO {
    public Connection conn = null;
    public PreparedStatement ps = null;
    public ResultSet rs = null;

    @Override
    public Category findById(int id) {
        String sql =  "select * from category where id = ?";
        Category category = new Category();
        try {
            conn = getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()){
                category.setId(rs.getInt("id"));
                category.setName(rs.getString("name"));
                category.setDelete(rs.getBoolean("isDeleted"));
                category.setCreatedAt(rs.getTimestamp("createdAt"));
                category.setUpdatedAt(rs.getTimestamp("updatedAt"));
            }
            return category;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Category> findAll() {
        String sql = "select * from category";
        List<Category> categories = new ArrayList<>();
        try {
            conn = getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()) {
                Category category = new Category();
                category.setId(rs.getInt("id"));
                category.setName(rs.getString("name"));
                category.setDelete(rs.getBoolean("isDeleted"));
                category.setCreatedAt(rs.getTimestamp("createdAt"));
                category.setUpdatedAt(rs.getTimestamp("updatedAt"));
                categories.add(category);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return categories;
    }
}
