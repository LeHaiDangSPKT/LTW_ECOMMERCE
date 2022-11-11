package com.mdk.controllers.admin;

import com.mdk.models.Category;
import com.mdk.models.Product;
import com.mdk.models.Store;
import com.mdk.models.User;
import com.mdk.services.ICategoryService;
import com.mdk.services.IProductService;
import com.mdk.services.impl.CategoryService;
import com.mdk.services.impl.ProductService;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/admin/product/permit", "/admin/product/prohibit", "/admin/product/category", "/admin/product/category/add", "/admin/product/category/edit"})
public class ProductController extends HttpServlet{

    private static final long serialVersionUID = 1L;
    ICategoryService categoryService = new CategoryService();
    IProductService productService = new ProductService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getRequestURL().toString();

        if (url.contains("product/category/edit")) {
            req.getRequestDispatcher("/views/admin/product/category/edit.jsp").forward(req, resp);
        }
        if (url.contains("product/category/add")) {
            req.getRequestDispatcher("/views/admin/product/category/add.jsp").forward(req, resp);
        }
        if (url.contains("product/category")) {
            List<Category> categoryList = categoryService.findAll();
            List<Category> categoryListDeleted = new ArrayList<Category>();
            List<Category> categoryListNotDelete = new ArrayList<Category>();
            for (Category item: categoryList) {
                if (item.isDelete()) {
                    categoryListDeleted.add(item);
                } else {
                    categoryListNotDelete.add(item);
                }
            }
            req.setAttribute("categoryListDeleted", categoryListDeleted);
            req.setAttribute("categoryListNotDelete", categoryListNotDelete);
            req.getRequestDispatcher("/views/admin/product/category/index.jsp").forward(req, resp);
        }
        if (url.contains("product/permit")) {
            List<Product> productList = productService.findAllProductPermitted();
            req.setAttribute("productList", productList);
            req.getRequestDispatcher("/views/admin/product/permit.jsp").forward(req, resp);
        }
        if (url.contains("product/prohibit")) {
            List<Product> productList = productService.findAllProductProhibited();
            req.setAttribute("productList", productList);
            req.getRequestDispatcher("/views/admin/product/prohibit.jsp").forward(req, resp);
        }

    }
}
