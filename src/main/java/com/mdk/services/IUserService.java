package com.mdk.services;

import com.mdk.models.User;

import com.mdk.models.User;
import com.mdk.paging.Pageble;

import java.util.List;

public interface IUserService {
	void insert(User user);
	void update(User user);
	void delete(int id);
	void updateWallet(int id, double eWallet);
	List<User> findBySearching(String keyword);
	
	
	List<User> findAll();
    User findById(int id);
    List<User> top10Users_Orders();
    int count();
    List<User> findAll(Pageble pageble);
    User findOneByUsernameAndPassword(String username, String password);
}
