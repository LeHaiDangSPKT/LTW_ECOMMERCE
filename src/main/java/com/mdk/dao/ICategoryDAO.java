package com.mdk.dao;

import com.mdk.models.Category;

import java.util.List;

public interface ICategoryDAO {
    Category findById(int id);
    List<Category> findAll();
}
