package com.mdk.controllers.vendor;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/vendor/home", "/vendor/store", "/vendor/create-store", "/vendor/edit-store",
"/vendor/statistic"})
public class StoreController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getRequestURL().toString();
        if (url.contains("home")) {
            req.getRequestDispatcher("/views/vendor/home.jsp").forward(req, resp);
        } else if (url.contains("create-store")) {
            req.getRequestDispatcher("/views/vendor/store.jsp").forward(req, resp);
        } else if (url.contains("store")) {
            req.getRequestDispatcher("/views/vendor/store.jsp").forward(req, resp);
        } else if (url.contains("edit-store")) {
            req.getRequestDispatcher("/views/vendor/store.jsp").forward(req, resp);
        } else if (url.contains("statistic")) {
            req.getRequestDispatcher("/views/vendor/statistic.jsp").forward(req, resp);
        }
    }
}
