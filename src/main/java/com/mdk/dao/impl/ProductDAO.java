package com.mdk.dao.impl;

import com.mdk.connection.DBConnection;
import com.mdk.dao.IProductDAO;
import com.mdk.models.Category;
import com.mdk.models.Product;
import com.mdk.paging.Pageble;
import com.mdk.services.ICategoryService;
import com.mdk.services.IImageProductService;
import com.mdk.services.impl.CategoryService;
import com.mdk.services.impl.ImageProductService;

import java.lang.invoke.SwitchPoint;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO extends DBConnection implements IProductDAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	@Override
	public List<Product> findAllProductProhibited() {
		StringBuilder sql = new StringBuilder("SELECT * FROM product WHERE isActive = false");
		List<Product> products = new ArrayList<Product>();
		try {
			conn = super.getConnection();
			ps = conn.prepareStatement(String.valueOf(sql));
			rs = ps.executeQuery();
			while (rs.next()) {
				Product product = new Product();
				product.setName(rs.getString("name"));
				product.setDescription(rs.getString("description"));
				product.setPrice(rs.getDouble("price"));
				product.setQuantity(rs.getInt("quantity"));
				product.setSold(rs.getInt("sold"));
				products.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return products;
	}

	@Override
	public List<Product> findAllProductPermitted() {
		StringBuilder sql = new StringBuilder("SELECT * FROM product WHERE isActive = true");
		List<Product> products = new ArrayList<Product>();
		try {
			conn = super.getConnection();
			ps = conn.prepareStatement(String.valueOf(sql));
			rs = ps.executeQuery();
			while (rs.next()) {
				Product product = new Product();
				product.setId(rs.getInt("id"));
				product.setName(rs.getString("name"));
				product.setDescription(rs.getString("description"));
				product.setPrice(rs.getDouble("price"));
				product.setQuantity(rs.getInt("quantity"));
				product.setSold(rs.getInt("sold"));
				products.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return products;
	}

	@Override
	public List<Product> topSeller(int storeId, int top) {
		StringBuilder sql = new StringBuilder("select * from product where storeId = ? order by sold DESC limit ?");
		List<Product> products = new ArrayList<>();
		ICategoryService categoryService = new CategoryService();
		IImageProductService imageProductService = new ImageProductService();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(String.valueOf(sql));
			ps.setInt(1, storeId);
			ps.setInt(2, top);
			rs = ps.executeQuery();

			while (rs.next()) {
				Product product = new Product();
				product.setId(rs.getInt("id"));
				product.setName(rs.getString("name"));
				product.setDescription(rs.getString("description"));
				product.setPrice(rs.getDouble("price"));
				product.setPromotionalPrice(rs.getDouble("promotionalPrice"));
				product.setQuantity(rs.getInt("quantity"));
				product.setSold(rs.getInt("sold"));
				product.setActive(rs.getBoolean("isActive"));
				product.setCategoryId(rs.getInt("categoryId"));
				product.setStoreId(rs.getInt("storeId"));
				product.setRating(rs.getInt("rating"));
				product.setCreatedAt(rs.getTimestamp("createdAt"));
				product.setUpdatedAt(rs.getTimestamp("updatedAt"));
				product.setCategory(categoryService.findById(rs.getInt("categoryId")));
				product.setImages(imageProductService.findByProductId(rs.getInt("id")));
				products.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return products;
	}

	@Override
	public void insert(Product product) {
		StringBuilder sql = new StringBuilder(
				"insert into product(name, description, price, promotionalPrice, quantity, sold, categoryId, storeId)\n"
						+ "values(?, ?, ?, ?, ?, ?, ?, ?)");
		try {
			conn = getConnection();
			ps = conn.prepareStatement(String.valueOf(sql));
			ps.setString(1, product.getName());
			ps.setString(2, product.getDescription());
			ps.setDouble(3, product.getPrice());
			ps.setDouble(4, product.getPromotionalPrice());
			ps.setInt(5, product.getQuantity());
			ps.setInt(6, product.getSold());
			ps.setInt(7, product.getCategoryId());
			ps.setInt(8, product.getStoreId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void update(Product product) {
		StringBuilder sql = new StringBuilder("update product set name = ?, description = ?, price = ?, "
				+ "promotionalPrice = ?, quantity = ?, categoryId = ? ");
		sql.append("where name like ? and storeId = ?");
		try {
			conn = getConnection();
			ps = conn.prepareStatement(String.valueOf(sql));
			ps.setString(1, product.getName());
			ps.setString(2, product.getDescription());
			ps.setDouble(3, product.getPrice());
			ps.setDouble(4, product.getPromotionalPrice());
			ps.setInt(5, product.getQuantity());
			ps.setInt(6, product.getCategoryId());
			ps.setString(7, product.getName());
			ps.setInt(8, product.getStoreId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void delete(int id) {
		StringBuilder sql = new StringBuilder("delete from product where id = ?");
		try {
			conn = getConnection();
			ps = conn.prepareStatement(String.valueOf(sql));
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void ban(int id, Boolean state) {
		StringBuilder sql = new StringBuilder("UPDATE product SET isActive = ? WHERE id = ?");
		try {
			conn = super.getConnection();
			ps = conn.prepareStatement(String.valueOf(sql));
			ps.setBoolean(1, state);
			ps.setInt(2, id);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public Product findOneByName(String name, int storeId) {
		StringBuilder sql = new StringBuilder("select * from product where name like ? and storeId = ?");
		Product product = new Product();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(String.valueOf(sql));
			ps.setString(1, name);
			ps.setInt(2, storeId);
			rs = ps.executeQuery();
			while (rs.next()) {
				product.setId(rs.getInt("id"));
				product.setName(rs.getString("name"));
				product.setDescription(rs.getString("description"));
				product.setPrice(rs.getDouble("price"));
				product.setPromotionalPrice(rs.getDouble("promotionalPrice"));
				product.setQuantity(rs.getInt("quantity"));
				product.setSold(rs.getInt("sold"));
				product.setActive(rs.getBoolean("isActive"));
				product.setCategoryId(rs.getInt("categoryId"));
				product.setStoreId(rs.getInt("storeId"));
				product.setRating(rs.getInt("rating"));
				product.setCreatedAt(rs.getTimestamp("createdAt"));
				product.setUpdatedAt(rs.getTimestamp("updatedAt"));
				return product;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public Product findOneById(int id) {
		StringBuilder sql = new StringBuilder("select * from product where id = ?");
		Product product = new Product();
		ICategoryService categoryService = new CategoryService();
		IImageProductService imageProductService = new ImageProductService();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(String.valueOf(sql));
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				product.setId(rs.getInt("id"));
				product.setName(rs.getString("name"));
				product.setDescription(rs.getString("description"));
				product.setPrice(rs.getDouble("price"));
				product.setPromotionalPrice(rs.getDouble("promotionalPrice"));
				product.setQuantity(rs.getInt("quantity"));
				product.setSold(rs.getInt("sold"));
				product.setActive(rs.getBoolean("isActive"));
				product.setCategoryId(rs.getInt("categoryId"));
				product.setStoreId(rs.getInt("storeId"));
				product.setRating(rs.getInt("rating"));
				product.setCreatedAt(rs.getTimestamp("createdAt"));
				product.setUpdatedAt(rs.getTimestamp("updatedAt"));
				product.setCategory(categoryService.findById(rs.getInt("categoryId")));
				product.setImages(imageProductService.findByProductId(rs.getInt("id")));
				return product;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Product> getTopSeller(int index) {
		StringBuilder sql = new StringBuilder("select * from product\n" + "order by sold DESC\n" + "limit ?");
		List<Product> products = new ArrayList<>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(String.valueOf(sql));
			ps.setInt(1, index);
			rs = ps.executeQuery();
			while (rs.next()) {
				Product product = new Product();
				product.setId(rs.getInt("id"));
				product.setName(rs.getString("name"));
				product.setDescription(rs.getString("description"));
				product.setPrice(rs.getDouble("price"));
				product.setPromotionalPrice(rs.getDouble("promotionalPrice"));
				product.setQuantity(rs.getInt("quantity"));
				product.setSold(rs.getInt("sold"));
				product.setActive(rs.getBoolean("isActive"));
				product.setCategoryId(rs.getInt("categoryId"));
				product.setStoreId(rs.getInt("storeId"));
				product.setRating(rs.getInt("rating"));

				product.setCreatedAt(rs.getTimestamp("createdAt"));
				product.setUpdatedAt(rs.getTimestamp("updatedAt"));

				products.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return products;
	}

	@Override
	public List<Product> findAll() {
		StringBuilder sql = new StringBuilder("select * from product");
		List<Product> products = new ArrayList<>();
		ICategoryService categoryService = new CategoryService();
		IImageProductService imageProductService = new ImageProductService();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(String.valueOf(sql));
			rs = ps.executeQuery();

			while (rs.next()) {
				Product product = new Product();
				product.setId(rs.getInt("id"));
				product.setName(rs.getString("name"));
				product.setDescription(rs.getString("description"));
				product.setPrice(rs.getDouble("price"));
				product.setPromotionalPrice(rs.getDouble("promotionalPrice"));
				product.setQuantity(rs.getInt("quantity"));
				product.setSold(rs.getInt("sold"));
				product.setActive(rs.getBoolean("isActive"));
				product.setCategoryId(rs.getInt("categoryId"));
				product.setStoreId(rs.getInt("storeId"));
				product.setRating(rs.getInt("rating"));
				product.setCreatedAt(rs.getTimestamp("createdAt"));
				product.setUpdatedAt(rs.getTimestamp("updatedAt"));
				product.setCategory(categoryService.findById(rs.getInt("categoryId")));
				product.setImages(imageProductService.findByProductId(rs.getInt("id")));
				products.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return products;
	}

	@Override
	public List<Product> findAll(Pageble pageble, int categoryId, int storeId) {
		StringBuilder sql = new StringBuilder("select * from product");
		if (categoryId != 0) {
			sql.append(" where categoryId = " + categoryId);
			sql.append(" and storeId = " + storeId);
		} else {
			sql.append(" where storeId = " + storeId);
		}
		if (pageble.getSorter() != null) {
			sql.append(" order by " + pageble.getSorter().getSortName() + " " + pageble.getSorter().getSortBy() + "");
		}
		if (pageble.getOffset() != null && pageble.getLimit() != null) {
			sql.append(" limit " + pageble.getOffset() + ", " + pageble.getLimit() + "");
		}
		List<Product> products = new ArrayList<>();
		ICategoryService categoryService = new CategoryService();
		IImageProductService imageProductService = new ImageProductService();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(String.valueOf(sql));
			rs = ps.executeQuery();

			while (rs.next()) {
				Product product = new Product();
				product.setId(rs.getInt("id"));
				product.setName(rs.getString("name"));
				product.setDescription(rs.getString("description"));
				product.setPrice(rs.getDouble("price"));
				product.setPromotionalPrice(rs.getDouble("promotionalPrice"));
				product.setQuantity(rs.getInt("quantity"));
				product.setSold(rs.getInt("sold"));
				product.setActive(rs.getBoolean("isActive"));
				product.setCategoryId(rs.getInt("categoryId"));
				product.setStoreId(rs.getInt("storeId"));
				product.setRating(rs.getInt("rating"));
				product.setCreatedAt(rs.getTimestamp("createdAt"));
				product.setUpdatedAt(rs.getTimestamp("updatedAt"));
				product.setCategory(categoryService.findById(rs.getInt("categoryId")));
				product.setImages(imageProductService.findByProductId(rs.getInt("id")));
				products.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return products;
	}

	@Override
	public List<Product> findByCategoryId(int categoryId) {
		StringBuilder sql = new StringBuilder("select * from product\n" + "where categoryId = ?");
		List<Product> products = new ArrayList<>();
		ICategoryService categoryService = new CategoryService();
		IImageProductService imageProductService = new ImageProductService();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(String.valueOf(sql));
			ps.setInt(1, categoryId);
			rs = ps.executeQuery();
			while (rs.next()) {
				Product product = new Product();
				product.setId(rs.getInt("id"));
				product.setName(rs.getString("name"));
				product.setDescription(rs.getString("description"));
				product.setPrice(rs.getDouble("price"));
				product.setPromotionalPrice(rs.getDouble("promotionalPrice"));
				product.setQuantity(rs.getInt("quantity"));
				product.setSold(rs.getInt("sold"));
				product.setActive(rs.getBoolean("isActive"));
				product.setCategoryId(rs.getInt("categoryId"));
				product.setStoreId(rs.getInt("storeId"));
				product.setRating(rs.getInt("rating"));

				product.setCreatedAt(rs.getTimestamp("createdAt"));
				product.setUpdatedAt(rs.getTimestamp("updatedAt"));
				product.setCategory(categoryService.findById(rs.getInt("categoryId")));
				product.setImages(imageProductService.findByProductId(rs.getInt("id")));
				products.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return products;
	}

	@Override
	public List<Product> findByStoreId(int storeId) {
		StringBuilder sql = new StringBuilder("select * from product where storeId = ?");
		List<Product> products = new ArrayList<>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(String.valueOf(sql));
			ps.setInt(1, storeId);
			rs = ps.executeQuery();
			while (rs.next()) {
				Product product = new Product();
				product.setId(rs.getInt("id"));
				product.setName(rs.getString("name"));
				product.setDescription(rs.getString("description"));
				product.setPrice(rs.getDouble("price"));
				product.setPromotionalPrice(rs.getDouble("promotionalPrice"));
				product.setQuantity(rs.getInt("quantity"));
				product.setSold(rs.getInt("sold"));
				product.setActive(rs.getBoolean("isActive"));
				product.setCategoryId(rs.getInt("categoryId"));
				product.setStoreId(rs.getInt("storeId"));
				product.setRating(rs.getInt("rating"));

				product.setCreatedAt(rs.getTimestamp("createdAt"));
				product.setUpdatedAt(rs.getTimestamp("updatedAt"));

				products.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return products;
	}

	@Override
	public int count(int categoryId, int storeId) {
		StringBuilder sql = new StringBuilder("select count(*) from product");
		if (categoryId != 0) {
			sql.append(" where categoryId = " + categoryId);
			sql.append(" and storeId = " + storeId);
		} else {
			sql.append(" where storeId = " + storeId);
		}
		try {
			conn = getConnection();
			ps = conn.prepareStatement(String.valueOf(sql));
			rs = ps.executeQuery();
			while (rs.next()) {
				return rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int count(String status) {
		StringBuilder sql = new StringBuilder("select count(*) from product");
		if (status != "") {
			sql.append(" where isActive = " + status);
		}
		try {
			conn = getConnection();
			ps = conn.prepareStatement(String.valueOf(sql));
			rs = ps.executeQuery();
			while (rs.next()) {
				return rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public List<Product> findAll(Pageble pageble, String status) {
		StringBuilder sql = new StringBuilder("select * from product");
		if (status != "") {
			sql.append(" where isActive = " + status);
		}
		if (pageble.getSorter() != null) {
			sql.append(" order by " + pageble.getSorter().getSortName() + " " + pageble.getSorter().getSortBy() + "");
		}
		if (pageble.getOffset() != null && pageble.getLimit() != null) {
			sql.append(" limit " + pageble.getOffset() + ", " + pageble.getLimit() + "");
		}
		List<Product> products = new ArrayList<>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(String.valueOf(sql));
			rs = ps.executeQuery();
			while (rs.next()) {
				Product product = new Product();
				product.setId(rs.getInt("id"));
				product.setName(rs.getString("name"));
				product.setDescription(rs.getString("description"));
				product.setPrice(rs.getDouble("price"));
				product.setQuantity(rs.getInt("quantity"));
				product.setSold(rs.getInt("sold"));
				products.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return products;
	}

	@Override
	public List<Product> findAllByStoreId(int id) {
		StringBuilder sql = new StringBuilder("select * from product\n" + "where storeId = ?");
		List<Product> products = new ArrayList<>();
		IImageProductService imageProductService = new ImageProductService();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(String.valueOf(sql));
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				Product product = new Product();
				product.setId(rs.getInt("id"));
				product.setName(rs.getString("name"));
				product.setDescription(rs.getString("description"));
				product.setPrice(rs.getDouble("price"));
				product.setPromotionalPrice(rs.getDouble("promotionalPrice"));
				product.setQuantity(rs.getInt("quantity"));
				product.setSold(rs.getInt("sold"));
				product.setActive(rs.getBoolean("isActive"));
				product.setCategoryId(rs.getInt("categoryId"));
				product.setStoreId(rs.getInt("storeId"));
				product.setRating(rs.getInt("rating"));
				product.setCreatedAt(rs.getTimestamp("createdAt"));
				product.setUpdatedAt(rs.getTimestamp("updatedAt"));
//                product.setCategory(categoryService.findById(rs.getInt("categoryId")));
				product.setImages(imageProductService.findByProductId(rs.getInt("id")));
				products.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return products;
	}

	@Override
	public List<Product> findBySearching(String keyword, int categoryId, int storeId, int rating, double minPrice,
			double maxPrice) {
		StringBuilder sql = new StringBuilder("select * from product\n" + " where name like CONCAT( '%',?,'%') "
				+ "and categoryId like ? " + "and storeId like ? " + "and rating like ? "
				+ "and price - promotionalPrice >= ? " + "and ? >= price - promotionalPrice ");
		List<Product> products = new ArrayList<>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(String.valueOf(sql));
			ps.setString(1, keyword);
			if (categoryId != 0)
				ps.setInt(2, categoryId);
			else
				ps.setString(2, "%");

			if (storeId != 0)
				ps.setInt(3, storeId);
			else
				ps.setString(3, "%");

			if (rating != -1)
				ps.setInt(4, rating);
			else
				ps.setString(4, "%");

			ps.setDouble(5, minPrice);
			ps.setDouble(6, maxPrice);
			rs = ps.executeQuery();
			while (rs.next()) {
				Product product = new Product();
				product.setId(rs.getInt("id"));
				product.setName(rs.getString("name"));
				product.setDescription(rs.getString("description"));
				product.setPrice(rs.getDouble("price"));
				product.setPromotionalPrice(rs.getDouble("promotionalPrice"));
				product.setQuantity(rs.getInt("quantity"));
				product.setSold(rs.getInt("sold"));
				product.setActive(rs.getBoolean("isActive"));
				product.setCategoryId(rs.getInt("categoryId"));
				product.setStoreId(rs.getInt("storeId"));
				product.setRating(rs.getInt("rating"));

				product.setCreatedAt(rs.getTimestamp("createdAt"));
				product.setUpdatedAt(rs.getTimestamp("updatedAt"));

				products.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return products;
	}

	@Override
	public List<Product> getTopRating(int index) {
		StringBuilder sql = new StringBuilder("select * from product\n" + "order by rating DESC\n" + "limit ?");
		List<Product> products = new ArrayList<>();
		try {
			conn = getConnection();
			ps = conn.prepareStatement(String.valueOf(sql));
			ps.setInt(1, index);
			rs = ps.executeQuery();
			while (rs.next()) {
				Product product = new Product();
				product.setId(rs.getInt("id"));
				product.setName(rs.getString("name"));
				product.setDescription(rs.getString("description"));
				product.setPrice(rs.getDouble("price"));
				product.setPromotionalPrice(rs.getDouble("promotionalPrice"));
				product.setQuantity(rs.getInt("quantity"));
				product.setSold(rs.getInt("sold"));
				product.setActive(rs.getBoolean("isActive"));
				product.setCategoryId(rs.getInt("categoryId"));
				product.setStoreId(rs.getInt("storeId"));
				product.setRating(rs.getInt("rating"));

				product.setCreatedAt(rs.getTimestamp("createdAt"));
				product.setUpdatedAt(rs.getTimestamp("updatedAt"));

				products.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return products;
	}
}
