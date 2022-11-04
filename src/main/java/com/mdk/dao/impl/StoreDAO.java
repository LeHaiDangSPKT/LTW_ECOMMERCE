
package com.mdk.dao.impl;

import com.mdk.connection.DBConnection;
import com.mdk.dao.IStoreDAO;
import com.mdk.models.Product;
import com.mdk.models.Store;
import com.mdk.models.User;
import com.mdk.services.IStoreService;
import com.mdk.services.impl.StoreService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StoreDAO extends DBConnection implements IStoreDAO {
    public Connection conn = null;
    public PreparedStatement ps = null;
    public ResultSet rs = null;
    @Override
    public List<Store> findAll() {
        String sql = "SELECT * FROM store";
        List<Store> stores = new ArrayList<Store>();
        try {
            conn = super.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()) {
                Store store = new Store();
//                store.setName(rs.getString("name"));
//                store.setBio(rs.getString("bio"));
//                store.setOwnerID(rs.getLong("ownerId"));
//                store.setPoint(rs.getInt("point"));
//                store.setRating(rs.getInt("rating"));
                stores.add(store);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return stores;
    }

    /*@Override
    public List<Store_1000> find1000StoresLatestCreationTime() {
        String sql = "SELECT COUNT(_id) as quantity, point FROM (" +
                "SELECT TOP 1000 * FROM store) GROUP BY point ORDER BY createdAt DESC";
        List<Store_1000> stores_1000 = new ArrayList<Store_1000>();
        try {
            conn = super.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()) {
                Store_1000 store = new Store_1000();
                store.setQuatity_group(rs.getInt("quantity"));
                store.setPoint(rs.getInt("point"));
                stores_1000.add(store);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return stores_1000;
    }*/

    @Override
    public int totalStores() {
        String sql = "SELECT COUNT(_id) as total FROM store";
        int result = 0;
        try {
            conn = super.getConnection();
            ps = conn.prepareStatement(sql);
            result = ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public List<Store> topStores() {
        String sql = "SELECT TOP 10 * FROM store ORDER BY point DESC";
        List<Store> stores = new ArrayList<Store>();
        try {
            conn = super.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()) {
                Store store = new Store();
//                store.setName(rs.getString("name"));
//                store.setBio(rs.getString("bio"));
//                store.setOwnerID(rs.getLong("ownerId"));
//                store.setPoint(rs.getInt("point"));
//                store.setRating(rs.getInt("rating"));
                stores.add(store);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return stores;
    }
}


