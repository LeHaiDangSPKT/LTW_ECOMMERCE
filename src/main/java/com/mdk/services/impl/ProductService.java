package com.mdk.services.impl;

import com.mdk.dao.IProductDAO;
import com.mdk.dao.impl.ProductDAO;
import com.mdk.models.Product;
import com.mdk.services.IProductService;

import java.util.List;

public class ProductService implements IProductService {
    IProductDAO productDAO = new ProductDAO();
    @Override
    public List<Product> findAllProductProhibited() {
        return productDAO.findAllProductProhibited();
    }

    @Override
    public List<Product> findAllProductPermitted() {
        return productDAO.findAllProductPermitted();
    }


}
