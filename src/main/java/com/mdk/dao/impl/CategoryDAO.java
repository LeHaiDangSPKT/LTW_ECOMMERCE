package com.mdk.dao.impl;

import com.mdk.connection.DBConnection;
import com.mdk.dao.ICategoryDAO;
import com.mdk.models.Category;
import com.mdk.models.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAO extends DBConnection implements ICategoryDAO {
    public Connection conn = null;
    public PreparedStatement ps = null;
    public ResultSet rs = null;
    @Override
    public List<Category> findALL() {
        String sql = "SELECT name, image FROM category";
        List<Category> categories = new ArrayList<Category>();
        try {
            conn = super.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()) {
                Category category = new Category();
//                category.setName(rs.getString("name"));
//                category.setImage(rs.getString("image"));
                categories.add(category);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return categories;
    }

    @Override
    public void insert(Category category) {
        String sql = "INSERT INTO category(name,image) VALUES (?,?)";
        try {
            conn = super.getConnection();
            ps = conn.prepareStatement(sql);
//            ps.setString(1, category.getName());
//            ps.setString(2, category.getImage());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }


}

    @Override
    public void edit(Category category) {
        String sql = "UPDATE category SET name = ?, image=? WHERE _id = ?";
        try {
            conn = super.getConnection();
            ps = conn.prepareStatement(sql);
//            ps.setString(1, category.getName());
//            ps.setString(2, category.getImage());
//            ps.setLong(3, category.getId());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteSoft(Category category) {
        String sql = "UPDATE category SET isDeleted = true WHERE _id = ?";
        try {
            conn = super.getConnection();
            ps = conn.prepareStatement(sql);
//            ps.setLong(1, category.getId());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void restore(Category category) {
        String sql = "UPDATE category SET isDeleted = false WHERE _id = ?";
        try {
            conn = super.getConnection();
            ps = conn.prepareStatement(sql);
//            ps.setLong(1, category.getId());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
