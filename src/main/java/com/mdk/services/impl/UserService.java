package com.mdk.services.impl;

import com.mdk.dao.IUserDAO;
import com.mdk.dao.impl.UserDAO;
import com.mdk.models.User;
import com.mdk.services.IUserService;

import java.util.List;

public class UserService implements IUserService {
    IUserDAO userDao = new UserDAO();

    @Override
    public User findById(int id) {
        return userDao.findById(id);
    }

    @Override
    public int totalUsers() {
        return userDao.totalUsers();
    }

    @Override
    public List<User> top10Users_Orders() {
        return userDao.top10Users_Orders();
    }
}
