package com.mdk.dao.impl;

import com.mdk.connection.DBConnection;
import com.mdk.dao.ICategoryDAO;
import com.mdk.models.Category;
import com.mdk.models.User;

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
                category.setName(rs.getString("name"));
                category.setDelete(rs.getBoolean("isDeleted"));
                category.setCreatedAt(rs.getTimestamp("createdAt"));
                category.setUpdatedAt(rs.getTimestamp("updateAt"));
            }
            return category;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
