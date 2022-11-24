package com.mdk.controllers.admin;

import com.mdk.models.*;
import com.mdk.paging.PageRequest;
import com.mdk.paging.Pageble;
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

import static com.mdk.utils.AppConstant.TOTAL_ITEM_IN_PAGE;

@WebServlet(urlPatterns = {"/admin/product/permit", "/admin/product/prohibit", "/admin/product/category", "/admin/product/category/add", "/admin/product/category/edit", "/admin/product/category/delete-soft", "/admin/product/category/delete", "/admin/product/category/restore"})
public class ProductController extends HttpServlet{

    private static final long serialVersionUID = 1L;
    ICategoryService categoryService = new CategoryService();
    IProductService productService = new ProductService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getRequestURL().toString();

        if (url.contains("product/category/edit")) {
            String id = req.getParameter("id");
            Category category = categoryService.findById(Integer.parseInt(id));
            req.setAttribute("category", category);
            req.getRequestDispatcher("/views/admin/product/category/edit.jsp").forward(req, resp);
        }
        else if (url.contains("product/category/add")) {
            req.getRequestDispatcher("/views/admin/product/category/add.jsp").forward(req, resp);
        }
        else if (url.contains("product/category/delete-soft")) {
            String id = req.getParameter("id");
            categoryService.deleteSoft(Integer.parseInt(id));
            resp.sendRedirect(req.getContextPath() + "/admin/product/category");
        }
        else if (url.contains("product/category/delete")) {
            String id = req.getParameter("id");
            categoryService.delete(Integer.parseInt(id));
            resp.sendRedirect(req.getContextPath() + "/admin/product/category");
        }
        else if (url.contains("product/category/restore")) {
            String id = req.getParameter("id");
            categoryService.restore(Integer.parseInt(id));
            resp.sendRedirect(req.getContextPath() + "/admin/product/category");
        }
        else if (url.contains("product/category")) {
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
        else if (url.contains("product/permit")) {
            productsPage(req, resp, "true");
            req.getRequestDispatcher("/views/admin/product/permit.jsp").forward(req, resp);
        }
        else if (url.contains("product/prohibit")) {
            productsPage(req, resp, "false");
            req.getRequestDispatcher("/views/admin/product/prohibit.jsp").forward(req, resp);
        }
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getRequestURL().toString();
        resp.setContentType("text/html;charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
        if (url.contains("product/category/add")) {
            Category category = new Category();
            try {
                category.setName(req.getParameter("name"));
                categoryService.insert(category);
                resp.sendRedirect(req.getContextPath() + "/admin/product/category");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        else if (url.contains("product/category/edit")) {
            Category category = new Category();
            try {
                category.setId(Integer.valueOf(req.getParameter("id")));
                category.setName(req.getParameter("name"));
                categoryService.edit(category);
                resp.sendRedirect(req.getContextPath() + "/admin/product/category");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    protected void productsPage(HttpServletRequest req, HttpServletResponse resp, String status) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        int totalItemInPage = TOTAL_ITEM_IN_PAGE;
        String indexPage = req.getParameter("index");
        if(indexPage == null) {
            indexPage = "1";
        }
        int countP = productService.count(status);
        int endP = (countP/totalItemInPage);
        if (countP % totalItemInPage != 0) {
            endP ++;
        }

        Pageble pageble = new PageRequest(Integer.parseInt(indexPage), totalItemInPage, null);
        List<Product> productList = productService.findAll(pageble, status);
        req.setAttribute("productList", productList);
        req.setAttribute("countP", countP);
        req.setAttribute("endP", endP);
        req.setAttribute("tag", indexPage);
        req.setAttribute("totalItemInPage", totalItemInPage);
    }
}
