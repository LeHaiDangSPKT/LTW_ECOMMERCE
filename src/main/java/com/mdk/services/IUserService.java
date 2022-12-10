package com.mdk.services;

import java.util.List;

import com.mdk.models.User;
import com.mdk.paging.Pageble;

public interface IUserService {
	void insert(User user);
	void update(User user);
	void delete(int id);
	void updateWallet(int id, double eWallet);
	List<User> findBySearching(String keyword);

	List<User> findAllForReport();
	
	List<User> findAll();
    User findById(int id);
    List<User> top10Users_Orders();
    int count(String keyword);
	List<User> findAll(Pageble pageble, String keyword);
    User findOneByUsernameAndPassword(String username, String password);
    int checkEmailExist(String email);
}
