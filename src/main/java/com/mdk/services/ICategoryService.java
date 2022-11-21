package com.mdk.services;

import com.mdk.models.Category;

import java.util.List;

public interface ICategoryService {
    void insert(Category category);
    void edit(Category category);
    void deleteSoft(int id);
    void restore(int id);
    void delete(int id);
    Category findById(int id);
    List<Category> findAll();
}
