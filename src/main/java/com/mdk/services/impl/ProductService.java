package com.mdk.services.impl;

import com.mdk.dao.IProductDAO;
import com.mdk.dao.impl.ProductDAO;
import com.mdk.models.ImageProduct;
import com.mdk.models.ImageStore;
import com.mdk.models.Product;
import com.mdk.paging.Pageble;
import com.mdk.services.IImageProductService;
import com.mdk.services.IProductService;

import java.util.List;

public class ProductService implements IProductService {
    IProductDAO productDAO = new ProductDAO();
    IImageProductService imageProductService = new ImageProductService();

    @Override
    public void insert(Product product) {
        productDAO.insert(product);
        int productId = productDAO.findOneByName(product.getName(), product.getStoreId()).getId();
        for (ImageProduct image : product.getImages()){
            image.setProductId(productId);
            imageProductService.insert(image);
        }
    }

    @Override
    public void update(Product product) {
        productDAO.update(product);
        imageProductService.delete(product.getId());
        for (ImageProduct image : product.getImages()) {
            image.setProductId(product.getId());
            imageProductService.insert(image);
        }
    }

    @Override
    public void delete(int id) {
        imageProductService.delete(id);
        productDAO.delete(id);
    }

    @Override
    public Product findOneByName(String name, int storeId) {
        return productDAO.findOneByName(name, storeId);
    }

    @Override
    public List<Product> getTopSeller(int index) {
        return productDAO.getTopSeller(index);
    }

    @Override
    public List<Product> findAll() {
        return productDAO.findAll();
    }

    @Override
    public List<Product> findAll(Pageble pageble, int categoryId) {
        return productDAO.findAll(pageble, categoryId);
    }

    @Override
    public List<Product> findByCategoryId(int categoryId) {
        return productDAO.findByCategoryId(categoryId);
    }

    @Override
    public Product findOneById(int id) {
        return productDAO.findOneById(id);
    }

    @Override
    public int count(int categoryId) {
        return productDAO.count(categoryId);
    }

    @Override
    public int count(String status) {
        return productDAO.count(status);
    }

    @Override
    public List<Product> findAll(Pageble pageble, String status) {
        return productDAO.findAll(pageble,status);
    }

    @Override
    public List<Product> findAllByStoreId(int id) {
        return productDAO.findAllByStoreId(id);
    }

}
