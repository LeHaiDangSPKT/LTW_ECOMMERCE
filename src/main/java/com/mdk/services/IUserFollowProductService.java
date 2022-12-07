package com.mdk.services;

import java.util.List;

import com.mdk.models.UserFollowProduct;

public interface IUserFollowProductService {
	void insert(UserFollowProduct userFollowProduct);

	void delete(int id);

	List<UserFollowProduct> findByUserId(int id);
}
