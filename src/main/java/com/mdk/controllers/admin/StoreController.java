package com.mdk.controllers.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/admin/store/all", "/admin/store/level"})
public class StoreController extends HttpServlet{

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getRequestURL().toString();

        if (url.contains("store/all")) {
            req.getRequestDispatcher("/views/admin/store/all.jsp").forward(req, resp);
        }
        if (url.contains("store/level")) {
            req.getRequestDispatcher("/views/admin/store/level.jsp").forward(req, resp);
        }
    }
}
