package com.mdk.services;

import com.mdk.models.Category;

import java.util.List;

public interface ICategoryService {
    List<Category> findAll();
    void insert(Category category);
    void edit(Category category);
    void deleteSoft(Category category);
    void restore(Category category);
}
