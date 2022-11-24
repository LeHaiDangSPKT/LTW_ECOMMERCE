package com.mdk.services.impl;

import com.mdk.dao.IUserDAO;
import com.mdk.dao.impl.UserDAO;
import com.mdk.models.User;
import com.mdk.paging.Pageble;
import com.mdk.services.IUserService;

import java.util.List;

public class UserService implements IUserService {
    IUserDAO userDao = new UserDAO();

    @Override
    public List<User> findAll() {
        return userDao.findAll();
    }

    @Override
    public User findById(int id) {
        return userDao.findById(id);
    }

    @Override
    public List<User> top10Users_Orders() {
        return userDao.top10Users_Orders();
    }

    @Override
    public int count() {
        return userDao.count();
    }

    @Override
    public List<User> findAll(Pageble pageble) {
        return userDao.findAll(pageble);
    }
}
