package com.mdk.dao;

import java.util.List;

import com.mdk.models.UserFollowStore;

public interface IUserFollowStoreDAO {
	void insert(UserFollowStore userFollowStore);
	void delete(int id);
	List<UserFollowStore> findByUserId(int id);
}
