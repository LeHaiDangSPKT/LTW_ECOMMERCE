
package com.mdk.dao.impl;

import com.mdk.connection.DBConnection;
import com.mdk.dao.IUserDAO;
import com.mdk.models.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO extends DBConnection implements IUserDAO {
    public Connection conn = null;
    public PreparedStatement ps = null;
    public ResultSet rs = null;

    @Override
    public List<User> findAll() {
        String sql = "SELECT * FROM user WHERE role = 'user'";
        List<User> users = new ArrayList<User>();
        try {
            conn = super.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setFirstname(rs.getString("firstname"));
                user.setLastname(rs.getString("lastname"));
                user.setId_card(rs.getString("id_card"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                users.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return users;

    }

    @Override
    public int totalUsers() {
        String sql = "SELECT COUNT(id) as total FROM user WHERE role = 'user'";
        int result = 0;
        try {
            conn = super.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                result = rs.getInt("total");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public List<User> top10Users_Orders() {
        String sql = "select user.id, user.firstname, user.lastname, user.id_card, user.email, user.phone, total from (select userId, count(userId) as total from orders group by userId order by total desc limit 10) as tb join user on tb.userId = user.id";
        List<User> users = new ArrayList<User>();
        try {
            conn = super.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setFirstname(rs.getString("firstname"));
                user.setLastname(rs.getString("lastname"));
                user.setId_card(rs.getString("id_card"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                user.setTotalOrders(rs.getInt("total"));
                users.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return users;
    }
    @Override
    public User findById(int id) {
        String sql = "select * from user where id = ?";
        User user = new User();
        try {
            conn = getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()) {
                user.setId(rs.getInt("id"));
                user.setFirstname(rs.getString("firstname"));
                user.setLastname(rs.getString("lastname"));
                user.setId_card(rs.getString("id_card"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                user.setEmailActive(rs.getBoolean("isEmailActive"));
                user.setPhoneActive(rs.getBoolean("isPhoneActive"));
                user.setPassword(rs.getString("password"));
                user.setRole(rs.getString("role"));
                user.setAvatar(rs.getString("avatar"));
                user.seteWallet(rs.getDouble("eWallet"));
                user.setCreatedAt(rs.getTimestamp("createdAt"));
                user.setUpdatedAt(rs.getTimestamp("updatedAt"));
                return user;
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
}

