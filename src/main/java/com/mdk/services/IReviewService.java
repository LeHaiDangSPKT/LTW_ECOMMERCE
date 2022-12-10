package com.mdk.services;

import java.util.List;

import com.mdk.models.Review;

public interface IReviewService {
	void insert(Review review);
	void update(Review review);
	void delete(int id);
	List<Review> findByProduct(int productId);
	List<Review> findByStore(int storeId);
	Review findReview(Review review);
}
