package com.mdk.controllers.user;

import java.util.List;

import com.mdk.dao.IProductDAO;
import com.mdk.dao.impl.ProductDAO;
import com.mdk.models.Product;

public class test{
	public static void main(String[] args) {
		IProductDAO productDao = new ProductDAO();
		List<Product> productList = productDao.findAll();
		System.out.print(productList);
		System.out.print("1");
	}
}
