package com.mdk.dao.impl;

import com.mdk.connection.DBConnection;
import com.mdk.dao.ITransactionDAO;
import com.mdk.models.Transaction;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class TransactionDAO extends DBConnection implements ITransactionDAO {
    public Connection conn = null;
    public PreparedStatement ps = null;
    public ResultSet rs = null;
    @Override
    public List<Transaction> findAll() {
        String sql = "SELECT * FROM transaction";
        List<Transaction> transactions = new ArrayList<Transaction>();
        try {
            conn = super.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()) {
                Transaction transaction = new Transaction();
                transaction.setUserId(rs.getInt("userId"));
                transaction.setStoreId(rs.getInt("storeId"));
                transaction.setUp(rs.getBoolean("isUp"));
                transaction.setAmount(rs.getDouble("amount"));
                transactions.add(transaction);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return transactions;
    }
}
