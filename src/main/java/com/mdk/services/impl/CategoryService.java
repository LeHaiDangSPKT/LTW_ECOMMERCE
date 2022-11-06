package com.mdk.services.impl;

import com.mdk.dao.ICategoryDAO;
import com.mdk.dao.impl.CategoryDAO;
import com.mdk.models.Category;
import com.mdk.services.ICategoryService;

public class CategoryService implements ICategoryService {
    ICategoryDAO categoryDAO = new CategoryDAO();
    @Override
    public Category findById(int id) {
        return categoryDAO.findById(id);
    }
}
