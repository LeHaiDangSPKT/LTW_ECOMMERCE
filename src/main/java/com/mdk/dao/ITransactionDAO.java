package com.mdk.dao;


import com.mdk.models.Transaction;
import com.mdk.paging.Pageble;

import java.util.List;

public interface ITransactionDAO {
    List<Transaction> findAll();
    int count(int storeId, String dateStart, String dateEnd);
    List<Transaction> findAll(Pageble pageble, int storeId, String dateStart, String dateEnd);
    void insert(Transaction transaction);

}
