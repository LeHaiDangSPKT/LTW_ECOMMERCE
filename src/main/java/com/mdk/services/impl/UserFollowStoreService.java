package com.mdk.services.impl;

import java.util.List;

import com.mdk.dao.IUserFollowStoreDAO;
import com.mdk.dao.impl.UserFollowStoreDAO;
import com.mdk.models.UserFollowStore;
import com.mdk.services.IUserFollowStoreService;

public class UserFollowStoreService implements IUserFollowStoreService {
	IUserFollowStoreDAO userFollowStoreDAO = new UserFollowStoreDAO();
	
	@Override
	public void insert(UserFollowStore userFollowStore) {
		userFollowStoreDAO.insert(userFollowStore);
	}

	@Override
	public void delete(int id) {
		userFollowStoreDAO.delete(id);
	}

	@Override
	public List<UserFollowStore> findByUserId(int id) {
		return userFollowStoreDAO.findByUserId(id);
	}

}
