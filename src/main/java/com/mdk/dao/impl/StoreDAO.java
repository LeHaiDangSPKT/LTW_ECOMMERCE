
package com.mdk.dao.impl;

import com.mdk.connection.DBConnection;
import com.mdk.dao.IStoreDAO;
import com.mdk.models.Store;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
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

}


