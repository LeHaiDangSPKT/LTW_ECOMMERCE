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
    public List<Product> findAll(Pageble pageble, int categoryId, int storeId, String searchKey) {
        return productDAO.findAll(pageble, categoryId, storeId, searchKey);
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
    public List<Product> findByStoreId(int storeId) {
        return productDAO.findByStoreId(storeId);
    }

    @Override
    public int count(int categoryId, int storeId, String searchKey) {
        return productDAO.count(categoryId, storeId, searchKey);
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

	@Override
	public List<Product> findBySearching(String keyword, int categoryId, int storeId, int rating, double minPrice,
			double maxPrice) {
		return productDAO.findBySearching(keyword, categoryId, storeId, rating, minPrice, maxPrice);
	}

	@Override
	public List<Product> getTopRating(int index) {
		return productDAO.getTopRating(index);
	}

	@Override
	public List<Product> findAllProductProhibited() {
		return productDAO.findAllProductProhibited();
	}

	@Override
	public List<Product> findAllProductPermitted() {
		return productDAO.findAllProductPermitted();
	}

    @Override
    public List<Product> topSeller(int storeId, int top) {
        return productDAO.topSeller(storeId, top);
    }

}
