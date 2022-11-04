package com.mdk.controllers.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/admin/delivery", "/admin/delivery/add", "/admin/delivery/edit"})
public class DeliveryController extends HttpServlet{

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getRequestURL().toString();

        if (url.contains("delivery/add")) {
            req.getRequestDispatcher("/views/admin/delivery/add.jsp").forward(req, resp);
        }
        if (url.contains("delivery/edit")) {
            req.getRequestDispatcher("/views/admin/delivery/edit.jsp").forward(req, resp);
        }
        if (url.contains("delivery")) {
            req.getRequestDispatcher("/views/admin/delivery/index.jsp").forward(req, resp);
        }


    }
}
