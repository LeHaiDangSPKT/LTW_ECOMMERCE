package com.mdk.controllers.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/admin/product/permit", "/admin/product/prohibit", "/admin/product/category", "/admin/product/category/add", "/admin/product/category/edit"})
public class ProductController extends HttpServlet{

    private static final long serialVersionUID = 1L;

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
            req.getRequestDispatcher("/views/admin/product/category/index.jsp").forward(req, resp);
        }
        if (url.contains("product/permit")) {
            req.getRequestDispatcher("/views/admin/product/permit.jsp").forward(req, resp);
        }
        if (url.contains("product/prohibit")) {
            req.getRequestDispatcher("/views/admin/product/prohibit.jsp").forward(req, resp);
        }

    }
}
