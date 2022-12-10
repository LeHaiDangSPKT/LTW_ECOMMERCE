package com.mdk.services;

import java.util.List;

import com.mdk.models.UserFollowStore;

public interface IUserFollowStoreService {
	void insert(UserFollowStore userFollowStore);

	void update(UserFollowStore userFollowStore);

	void delete(int id);

	List<UserFollowStore> findByUserId(int id);

	UserFollowStore findFollow(UserFollowStore userFollowStore);
}
