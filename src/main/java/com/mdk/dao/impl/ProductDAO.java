package com.mdk.dao.impl;

import com.mdk.connection.DBConnection;
import com.mdk.dao.IProductDAO;
import com.mdk.models.Category;
import com.mdk.models.Product;
import com.mdk.services.ICategoryService;
import com.mdk.services.IImageProductService;
import com.mdk.services.impl.CategoryService;
import com.mdk.services.impl.ImageProductService;

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
        String sql = "SELECT * FROM product WHERE isActive = false";
        List<Product> products = new ArrayList<Product>();
        try {
            conn = super.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()) {
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
        String sql = "SELECT * FROM product WHERE isActive = true";
        List<Product> products = new ArrayList<Product>();
        try {
            conn = super.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()) {
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
public void insert(Product product) {
    StringBuilder sql = new StringBuilder("insert into product(name, description, price, promotionalPrice, quantity, sold, categoryId, storeId)\n" +
            "values(?, ?, ?, ?, ?, ?, ?, ?)");
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
    StringBuilder sql = new StringBuilder("update product set name = ?, description = ?, price = ?, " +
            "promotionalPrice = ?, quantity = ?, categoryId = ? ");
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
        ps.setInt(8,product.getStoreId());
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
public List<Product> getTopSeller(int index) {
    StringBuilder sql = new StringBuilder("select * from product\n" +
            "order by sold DESC\n" +
            "limit ?");
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
public List<Product> findByCategoryId(int categoryId) {
    StringBuilder sql = new StringBuilder("select * from product\n" +
            "where categoryId = ?");
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
}

