
package com.mdk.dao.impl;

import com.mdk.connection.DBConnection;
import com.mdk.dao.IStoreDAO;

import com.mdk.models.ImageStore;
import com.mdk.models.Store;
import com.mdk.services.IImageStoreService;
import com.mdk.services.impl.ImageStoreService;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.SQLException;
import java.util.List;

public class StoreDAO extends DBConnection implements IStoreDAO {
    public Connection conn = null;
    public PreparedStatement ps = null;
    public ResultSet rs = null;

    @Override
    public int totalStores() {
        String sql = "SELECT COUNT(id) as total FROM store";
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
    public List<Store> top10Store_Orders() {
        String sql = "select store.id, store.name, store.bio, store.ownerId, total from (select storeId, count(storeId) as total from orders group by storeId order by total desc limit 10) as tb join store on tb.storeId = store.id";
        List<Store> stores = new ArrayList<Store>();
        try {
            conn = super.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Store store = new Store();
                store.setName(rs.getString("name"));
                store.setBio(rs.getString("bio"));
                store.setOwnerId(rs.getInt("ownerId"));
                store.setTotal(rs.getInt("total"));
                stores.add(store);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return stores;
    }

    @Override
    public void insert(Store store) {
        String sql = "insert into store(name, bio, ownerId, avatar) values(?, ?, ?, ?)";
        try {
            conn = getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, store.getName());
            ps.setString(2, store.getBio());
            ps.setInt(3, store.getOwnerID());
            ps.setString(4, store.getAvatar());
            ps.executeUpdate();
        }catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void update(Store store) {
        String sql = "update store set name = ?, bio = ?, avatar = ?";
        try {
            conn = getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, store.getName());
            ps.setString(2, store.getBio());
            ps.setString(3, store.getAvatar());
            ps.executeUpdate();
        }catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public int count(int userId) {
        String sql = "select count(*) from store where ownerId = ?";
        try {
            conn = getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, userId);
            rs = ps.executeQuery();
            while(rs.next()){
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public Store findByUserId(int userId) {
        String sql = "select * from store where ownerId = ?";
        Store store = new Store();
        IImageStoreService imageStoreService = new ImageStoreService();
        try {
            conn = getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, userId);
            rs = ps.executeQuery();
            while (rs.next()){
                store.setId(rs.getInt("id"));
                store.setName(rs.getString("name"));
                store.setBio(rs.getString("bio"));
                store.setOwnerID(rs.getInt("ownerId"));
                store.setOpen(rs.getBoolean("isOpen"));
                store.setAvatar(rs.getString("avatar"));
                store.setRating(rs.getInt("rating"));
                store.seteWallet(rs.getDouble("eWallet"));
                store.setImages(imageStoreService.findByStoreId(rs.getInt("id")));
                return store;
            }
        } catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Store findById(int id) {
        String sql = "select * from store where id = ?";
        Store store = new Store();
        IImageStoreService imageStoreService = new ImageStoreService();
        try {
            conn = getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                store.setId(rs.getInt("id"));
                store.setName(rs.getString("name"));
                store.setBio(rs.getString("bio"));
                store.setOwnerID(rs.getInt("ownerId"));
                store.setOpen(rs.getBoolean("isOpen"));
                store.setAvatar(rs.getString("avatar"));
                store.setRating(rs.getInt("rating"));
                store.seteWallet(rs.getDouble("eWallet"));
                store.setImages(imageStoreService.findByStoreId(rs.getInt("id")));
                return store;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}


