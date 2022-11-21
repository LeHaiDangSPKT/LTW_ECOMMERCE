
package com.mdk.dao;

import com.mdk.models.User;

import java.util.List;

public interface IUserDAO {
    List<User> findAll();
    User findById(int id);
}
