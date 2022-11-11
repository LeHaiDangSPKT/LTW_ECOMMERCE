package com.mdk.controllers.admin;

import com.mdk.models.Orders;
import com.mdk.services.IOrdersService;
import com.mdk.services.impl.OrdersService;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/admin/order/all", "/admin/order/delivering", "/admin/order/details"})
public class OrderController extends HttpServlet{

    private static final long serialVersionUID = 1L;
    IOrdersService ordersService = new OrdersService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getRequestURL().toString();

        if (url.contains("admin/order/all")) {
            List<Orders> ordersList = ordersService.findAll();
            req.setAttribute("ordersList", ordersList);
            req.getRequestDispatcher("/views/admin/order/all.jsp").forward(req, resp);
        }
        if (url.contains("admin/order/delivering")) {
            List<Orders> ordersList = ordersService.findDelivering();
            req.setAttribute("ordersList", ordersList);
            req.getRequestDispatcher("/views/admin/order/delivering.jsp").forward(req, resp);
        }
        if (url.contains("admin/order/details")) {
            req.getRequestDispatcher("/views/admin/order/details.jsp").forward(req, resp);
        }

    }
}
