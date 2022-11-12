package com.mdk.controllers.vendor;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/vendor/list-product", "/vendor/add-product"})
public class ProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getRequestURL().toString();
        if (url.contains("list-product")) {
            req.getRequestDispatcher("/views/vendor/listProduct.jsp").forward(req,resp);
        } else if (url.contains("add-product")) {

            String action = req.getParameter("action").toString();
            req.setAttribute("action", req.getParameter("action").toString());
            req.getRequestDispatcher("/views/vendor/addProduct.jsp").forward(req,resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }

    protected void findAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    protected void insert(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    protected  void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    protected void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
