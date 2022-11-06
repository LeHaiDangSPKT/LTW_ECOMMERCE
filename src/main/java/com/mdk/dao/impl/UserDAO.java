
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
            while(rs.next()) {
                User user = new User();
//                user.setFirstname(rs.getString("firstname"));
//                user.setLastname(rs.getString("lastname"));
//                user.setId_card(rs.getLong("id_card"));
//                user.setEmail(rs.getString("email"));
//                user.setPhone(rs.getString("phone"));
//                user.setPoint(rs.getInt("point"));
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
        try {
            conn = getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()) {

            }
        }catch (SQLException e){

        }
        return null;
    }

//    @Override
//    public List<User_1000> find1000UsersLatestCreationTime() {
//        String sql = "SELECT COUNT(_id) as quantity, point FROM (" +
//                "SELECT TOP 1000 * FROM user) GROUP BY point ORDER BY createdAt DESC";
//        List<User_1000> users_1000 = new ArrayList<User_1000>();
//        try {
//            Connection getConnection = super.getConnection();
//            ps = getConnection.prepareStatement(sql);
//            rs = ps.executeQuery();
//            while(rs.next()) {
//                User_1000 user = new User_1000();
//                user.setQuatity_group(rs.getInt("quantity"));
//                user.setPoint(rs.getInt("point"));
//                users_1000.add(user);
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return users_1000;
//    }

    @Override
    public int totalUsers() {
        String sql = "SELECT COUNT(_id) as total FROM user WHERE role = user";
        int result = 0;
        try {
            Connection getConnection = super.getConnection();
            ps = getConnection.prepareStatement(sql);
            result = ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public List<User> topUsers() {
        String sql = "SELECT TOP 10 * FROM user ORDER BY point DESC";
        List<User> users = new ArrayList<User>();
        try {
            Connection getConnection = super.getConnection();
            ps = getConnection.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()) {
                User user = new User();
//                user.setFirstname(rs.getString("firstname"));
//                user.setLastname(rs.getString("lastname"));
//                user.setId_card(rs.getLong("id_card"));
//                user.setEmail(rs.getString("email"));
//                user.setPhone(rs.getString("phone"));
//                user.setPoint(rs.getInt("point"));
                users.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return users;
    }
}
