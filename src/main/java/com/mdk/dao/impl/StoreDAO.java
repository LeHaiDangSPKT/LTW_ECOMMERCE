
package com.mdk.dao.impl;

import com.mdk.connection.DBConnection;
import com.mdk.dao.IStoreDAO;
import com.mdk.models.Store;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class StoreDAO extends DBConnection implements IStoreDAO {
    public Connection conn = null;
    public PreparedStatement ps = null;
    public ResultSet rs = null;

    @Override
    public void insert(Store store) {
        String sql = "insert into store(name, bio, ownerId, avatar, image1, image2, image3, image4) \n" +
                "values(?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            conn = getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, store.getName());
            ps.setString(2, store.getBio());
            ps.setInt(3, store.getOwnerID());
            ps.setString(4, store.getAvatar());
            ps.setString(5, store.getImage1());
            ps.setString(6, store.getImage2());
            ps.setString(7, store.getImage3());
            ps.setString(8, store.getImage4());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void update(Store store) {
        String sql = "update store set name = ?, bio = ?, ownerId = ?, isOpen = ?, \n" +
                "eWallet = ?, avatar = ?, image1 = ?, image2 = ?, image3 = ?, image4 = ?\n" +
                "where id = ?";
        try {
            conn = getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, store.getName());
            ps.setString(2, store.getBio());
            ps.setInt(3, store.getOwnerID());
            ps.setBoolean(4, store.isOpen());
            ps.setDouble(5, store.geteWallet());
            ps.setString(6, store.getAvatar());
            ps.setString(7, store.getImage1());
            ps.setString(8, store.getImage2());
            ps.setString(9, store.getImage3());
            ps.setString(10, store.getImage4());
            ps.setInt(11, store.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Store findById(int id) {
        String sql = "select * from store where id = ?";
        Store store = new Store();
        try {
            conn = getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()) {
                store.setName(rs.getString("name"));
                store.setBio(rs.getString("bio"));
                store.setOwnerID(rs.getInt("ownerId"));
                store.setOpen(rs.getBoolean("isOpen"));
                store.setAvatar(rs.getString("avatar"));
                store.setRating(rs.getInt("rating"));
                store.seteWallet(rs.getDouble("eWallet"));
                store.setImage1(rs.getString("image1"));
                store.setImage2(rs.getString("image2"));
                store.setImage3(rs.getString("image3"));
                store.setImage4(rs.getString("image4"));
                store.setCreatedAt(rs.getTimestamp("createdAt"));
                store.setUpdatedAt(rs.getTimestamp("updateAt"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public int totalStores() {
        return 0;
    }

    @Override
    public List<Store> topStores() {
        return null;
    }
}


