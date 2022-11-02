package com.mdk.controllers.vendor;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/vendor/manager-order", "/vendor/order-detail"})
public class OrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getRequestURL().toString();
        if (url.contains("manager-order")){
            req.getRequestDispatcher("/views/vendor/managerOrder.jsp").forward(req, resp);
        } else if (url.contains("order-detail")) {
            req.getRequestDispatcher("/views/vendor/order.jsp").forward(req, resp);
        }
    }
}
