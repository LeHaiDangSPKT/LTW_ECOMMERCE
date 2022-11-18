package com.mdk.services;

import com.mdk.models.Category;

import java.util.List;

public interface ICategoryService {
    Category findById(int id);
    List<Category> findAll();
}
