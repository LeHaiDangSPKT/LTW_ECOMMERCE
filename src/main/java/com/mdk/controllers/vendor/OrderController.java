package com.mdk.controllers.vendor;

import com.mdk.models.Orders;
import com.mdk.services.IOrdersService;
import com.mdk.services.impl.OrdersService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = {"/vendor/order", "/vendor/order/manager", "/vendor/order/detail"})
public class OrderController extends HttpServlet {
    IOrdersService ordersService = new OrdersService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getRequestURL().toString();
        if (url.contains("manager")){
            findAllByStatus(req, resp);
            req.getRequestDispatcher("/views/vendor/managerOrder.jsp").forward(req, resp);
        } else if (url.contains("detail")) {
            req.getRequestDispatcher("/views/vendor/order.jsp").forward(req, resp);
        }
        else {
            req.getRequestDispatcher("/views/vendor/managerOrder.jsp").forward(req, resp);
        }
    }
    protected void findAllByStatus(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");

        String statusReq = req.getParameter("status");
        String status = "";
        if (statusReq.equals("all")) {
            status = "all";
        } else if (statusReq.equals("not-processed")) {
            status = "Đang xử lý";
        } else if (statusReq.equals("delivered")) {
            status = "Đang giao";
        } else if (statusReq.equals("shipped")) {
            status = "Đã giao";
        } else if (statusReq.equals("cancelled")) {
            status = "Đã hủy";
        }
        List<Orders> orders = ordersService.findAll(status);
        req.setAttribute("statusResp",statusReq);
        req.setAttribute("orders", orders);
    }
}
