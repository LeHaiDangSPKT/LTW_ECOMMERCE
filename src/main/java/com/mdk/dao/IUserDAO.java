
package com.mdk.dao;

import com.mdk.models.User;

import java.util.List;

public interface IUserDAO {
    List<User> findAll();
    User findById(int id);
    int totalUsers();
    List<User> top10Users_Orders();
}
