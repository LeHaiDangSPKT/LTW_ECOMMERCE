package com.mdk.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mdk.connection.DBConnection;
import com.mdk.dao.IReviewDAO;
import com.mdk.models.Review;
import com.mdk.services.IImageStoreService;
import com.mdk.services.IOrdersService;
import com.mdk.services.IProductService;
import com.mdk.services.IStoreService;
import com.mdk.services.IUserService;
import com.mdk.services.impl.ImageStoreService;
import com.mdk.services.impl.OrdersService;
import com.mdk.services.impl.ProductService;
import com.mdk.services.impl.StoreService;
import com.mdk.services.impl.UserService;

public class ReviewDAO extends DBConnection implements IReviewDAO {
	public Connection conn = null;
	public PreparedStatement ps = null;
	public ResultSet rs = null;
	
	@Override
	public void insert(Review review) {
		String sql = "insert into review(userId, productId, storeId, ordersId, content, stars) values(?, ?, ?, ?, ?, ?)";
		try {
			conn = getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, review.getUserId());
			ps.setInt(2, review.getProductId());
			ps.setInt(3, review.getStoreId());
			ps.setInt(4, review.getOrdersId());
			ps.setString(5, review.getContent());
			ps.setInt(6, review.getStars());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void update(Review review) {
		String sql = "update review "
				+ "set userId = ?, productId = ?, storeId = ?, ordersId = ?, content = ?, stars = ? "
				+ "where id = ?";
		try {
			conn = getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, review.getUserId());
			ps.setInt(2, review.getProductId());
			ps.setInt(3, review.getStoreId());
			ps.setInt(4, review.getOrdersId());
			ps.setString(5, review.getContent());
			ps.setInt(6, review.getStars());
			ps.setInt(7, review.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}

	@Override
	public void delete(int id) {
		String sql = "delete from review where id = ?";
		try {
			conn = getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Review> findByProduct(int productId) {
		String sql = "select * from review where productId = ?";
		List<Review> reviews = new ArrayList<Review>();
		IImageStoreService imageStoreService = new ImageStoreService();
		IUserService userService = new UserService();
		IProductService productService = new ProductService();
		IStoreService storeService = new StoreService();
		IOrdersService orderService = new OrdersService();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, productId);
			rs = ps.executeQuery();
			while (rs.next()) {
				Review review = new Review();
				review.setId(rs.getInt("id"));
				review.setProductId(rs.getInt("productId"));
				review.setStoreId(rs.getInt("storeId"));
				review.setUserId(rs.getInt("userId"));
				review.setOrdersId(rs.getInt("ordersId"));
				review.setStars(rs.getInt("stars"));
				review.setContent(rs.getString("content"));
				review.setCreatedAt(rs.getTimestamp("createdAt"));
				review.setUpdatedAt(rs.getTimestamp("updatedAt"));
				review.setUser(userService.findById(review.getUserId()));
				review.setProduct(productService.findOneById(review.getProductId()));
				review.setStore(storeService.findById(review.getStoreId()));
				review.setOrders(orderService.findById(review.getOrdersId()));
				reviews.add(review);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return reviews;
	}

	@Override
	public List<Review> findByStore(int storeId) {
		String sql = "select * from review where storeId = ?";
		List<Review> reviews = new ArrayList<Review>();
		IImageStoreService imageStoreService = new ImageStoreService();
		IUserService userService = new UserService();
		IProductService productService = new ProductService();
		IStoreService storeService = new StoreService();
		IOrdersService orderService = new OrdersService();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, storeId);
			rs = ps.executeQuery();
			while (rs.next()) {
				Review review = new Review();
				review.setId(rs.getInt("id"));
				review.setProductId(rs.getInt("productId"));
				review.setStoreId(rs.getInt("storeId"));
				review.setUserId(rs.getInt("userId"));
				review.setOrdersId(rs.getInt("ordersId"));
				review.setStars(rs.getInt("stars"));
				review.setContent(rs.getString("content"));
				review.setCreatedAt(rs.getTimestamp("createdAt"));
				review.setUpdatedAt(rs.getTimestamp("updatedAt"));
				review.setUser(userService.findById(review.getUserId()));
				review.setProduct(productService.findOneById(review.getProductId()));
				review.setStore(storeService.findById(review.getStoreId()));
				review.setOrders(orderService.findById(review.getOrdersId()));
				reviews.add(review);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return reviews;
	}

	@Override
	public Review findReview(Review review) {
		String sql = "select * from review where userId = ? AND productId = ? AND storeId = ? AND ordersId = ?";
		IImageStoreService imageStoreService = new ImageStoreService();
		IUserService userService = new UserService();
		IProductService productService = new ProductService();
		IStoreService storeService = new StoreService();
		IOrdersService orderService = new OrdersService();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, review.getUserId());
			ps.setInt(2, review.getProductId());
			ps.setInt(3, review.getStoreId());
			ps.setInt(4, review.getOrdersId());
			rs = ps.executeQuery();
			while (rs.next()) {
				Review new_review = new Review();
				new_review.setId(rs.getInt("id"));
				new_review.setProductId(rs.getInt("productId"));
				new_review.setStoreId(rs.getInt("storeId"));
				new_review.setUserId(rs.getInt("userId"));
				new_review.setOrdersId(rs.getInt("ordersId"));
				new_review.setStars(rs.getInt("stars"));
				new_review.setContent(rs.getString("content"));
				new_review.setCreatedAt(rs.getTimestamp("createdAt"));
				new_review.setUpdatedAt(rs.getTimestamp("updatedAt"));
				new_review.setUser(userService.findById(review.getUserId()));
				new_review.setProduct(productService.findOneById(review.getProductId()));
				new_review.setStore(storeService.findById(review.getStoreId()));
				new_review.setOrders(orderService.findById(review.getOrdersId()));
				return new_review;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
