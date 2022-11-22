package com.mdk.controllers.vendor;

import com.mdk.models.Orders;
import com.mdk.paging.PageRequest;
import com.mdk.paging.Pageble;
import com.mdk.services.IOrdersService;
import com.mdk.services.impl.OrdersService;
import com.mdk.sort.Sorter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import static com.mdk.utils.AppConstant.TOTAL_ITEM_IN_PAGE;

@WebServlet(urlPatterns = {"/vendor/order", "/vendor/order/manager", "/vendor/order/detail"})
public class OrderVendorController extends HttpServlet {
    IOrdersService ordersService = new OrdersService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String url = req.getRequestURL().toString();
        if (url.contains("manager")){
            ordersPage(req, resp);
            req.getRequestDispatcher("/views/vendor/managerOrder.jsp").forward(req, resp);
        } else if (url.contains("detail")) {
            req.getRequestDispatcher("/views/vendor/order.jsp").forward(req, resp);
        }
        else {
            req.getRequestDispatcher("/views/vendor/managerOrder.jsp").forward(req, resp);
        }
    }
    protected void ordersPage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
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

        int totalItemInPage = TOTAL_ITEM_IN_PAGE;
        String indexPage = req.getParameter("index");
        if(indexPage == null) {
            indexPage = "1";
        }

        int countP = ordersService.count(status);
        int endP = (countP/totalItemInPage);
        if (countP % totalItemInPage != 0) {
            endP ++;
        }

        Pageble pageble = new PageRequest(Integer.parseInt(indexPage), totalItemInPage, null);
        List<Orders> ordersList = ordersService.findAll(status, pageble);
        req.setAttribute("orders", ordersList);
        req.setAttribute("count", countP);
        req.setAttribute("endP", endP);
        req.setAttribute("tag", indexPage);
        req.setAttribute("statusResp",statusReq);
    }
}
