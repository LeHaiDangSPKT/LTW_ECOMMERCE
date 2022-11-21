package com.mdk.services;

import com.mdk.models.User;

import java.util.List;

public interface IUserService {
    List<User> findAll();
    User findById(int id);
    int totalUsers();
    List<User> top10Users_Orders();
}
