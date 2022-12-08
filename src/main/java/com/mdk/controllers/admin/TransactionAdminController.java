package com.mdk.controllers.admin;

import static com.mdk.utils.AppConstant.TOTAL_ITEM_IN_PAGE;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mdk.paging.PageRequest;
import com.mdk.paging.Pageble;
import com.mdk.services.IOrdersService;
import com.mdk.services.impl.OrdersService;

@WebServlet(urlPatterns = {"/admin/transaction"})
public class TransactionAdminController extends HttpServlet{

    private static final long serialVersionUID = 1L;
//    ITransactionService transactionService = new TransactionService();
    IOrdersService ordersService = new OrdersService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getRequestURL().toString();

        if (url.contains("transaction")) {
            deliveryPage(req, resp, "delivered");
            req.getRequestDispatcher("/views/admin/transaction/index.jsp").forward(req, resp);
        }


    }
    protected void deliveryPage(HttpServletRequest req, HttpServletResponse resp, String status) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        int totalItemInPage = TOTAL_ITEM_IN_PAGE;
        String indexPage = req.getParameter("index");
        if(indexPage == null) {
            indexPage = "1";
        }
//        int countP = ordersService.count(status);
//        int endP = (countP/totalItemInPage);
//        if (countP % totalItemInPage != 0) {
//            endP ++;
//        }

        Pageble pageble = new PageRequest(Integer.parseInt(indexPage), totalItemInPage, null);
//        List<Orders> ordersList = ordersService.findAll(status, pageble);
//        req.setAttribute("ordersList", ordersList);
//        req.setAttribute("countP", countP);
//        req.setAttribute("endP", endP);
        req.setAttribute("tag", indexPage);
        req.setAttribute("totalItemInPage", totalItemInPage);
    }
}
