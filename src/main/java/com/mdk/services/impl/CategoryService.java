package com.mdk.services.impl;

import com.mdk.dao.ICategoryDAO;
import com.mdk.dao.impl.CategoryDAO;
import com.mdk.models.Category;
import com.mdk.services.ICategoryService;

import java.util.List;

public class CategoryService implements ICategoryService {
    ICategoryDAO categoryDAO = new CategoryDAO();

    @Override
    public List<Category> findAll() {
        return categoryDAO.findAll();
    }

    @Override
    public void insert(Category category) {
        categoryDAO.insert(category);
    }

    @Override
    public void edit(Category category) {
        categoryDAO.edit(category);
    }

    @Override
    public void deleteSoft(Category category) {
        categoryDAO.deleteSoft(category);
    }

    @Override
    public void restore(Category category) {
        categoryDAO.restore(category);
    }
}
