
package com.mdk.dao;

import com.mdk.models.Orders;
import com.mdk.models.User;
import com.mdk.paging.Pageble;

import java.util.List;

public interface IUserDAO {
	void insert(User user);
	void update(User user);
	void delete(int id);
	List<User> findBySearching(String keyword);
	
    List<User> findAll();
    User findById(int id);
    List<User> top10Users_Orders();
    int count();
    List<User> findAll(Pageble pageble);
    User findOneByUsernameAndPassword(String username, String password);
}
