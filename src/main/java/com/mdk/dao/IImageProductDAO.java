package com.mdk.dao;

import com.mdk.models.ImageProduct;
import com.mdk.models.ImageStore;

import java.util.List;

public interface IImageProductDAO {
    void insert (ImageProduct image);
    void delete(int productId);
    List<ImageProduct> findByProductId(int id);
}
