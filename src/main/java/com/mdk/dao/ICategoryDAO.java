package com.mdk.dao;

import com.mdk.models.Category;
import com.mdk.models.Delivery;

import java.util.List;

public interface ICategoryDAO {
    List<Category> findAll();
    Category getOneById (int id);
    void insert(Category category);
    void edit(Category category);
    void deleteSoft(int id);
    void restore(int id);
    void delete(int id);
}
