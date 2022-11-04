
package com.mdk.dao;

import com.mdk.models.User;

import java.util.List;

public interface IUserDAO {
    List<User> findAll();
//    List<User_1000> find1000UsersLatestCreationTime();
    int totalUsers();
    List<User> topUsers();
}
