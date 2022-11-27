package com.mdk.services;

import com.mdk.models.User;

import com.mdk.models.User;
import com.mdk.paging.Pageble;

import java.util.List;

public interface IUserService {
    List<User> findAll();
    User findById(int id);
    List<User> top10Users_Orders();
    int count();
    List<User> findAll(Pageble pageble);
    User findOneByUsernameAndPassword(String username, String password);
}
