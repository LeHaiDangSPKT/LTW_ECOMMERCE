package com.mdk.controllers.admin;

import com.mdk.models.Orders;
import com.mdk.models.Store;
import com.mdk.paging.PageRequest;
import com.mdk.paging.Pageble;
import com.mdk.services.IOrdersService;
import com.mdk.services.IStoreService;
import com.mdk.services.impl.OrdersService;
import com.mdk.services.impl.StoreService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import static com.mdk.utils.AppConstant.TOTAL_ITEM_IN_PAGE;

@WebServlet(urlPatterns = {"/admin/transaction/buy", "/admin/transaction/withdraw"})
public class TransactionAdminController extends HttpServlet{

    private static final long serialVersionUID = 1L;
//    ITransactionService transactionService = new TransactionService();
    IOrdersService ordersService = new OrdersService();
    IStoreService storeService = new StoreService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getRequestURL().toString();

        if (url.contains("transaction/buy")) {
            ordersPage(req, resp, "delivered");
            req.getRequestDispatcher("/views/admin/transaction/buy.jsp").forward(req, resp);
        }
        else if (url.contains("transaction/withdraw")) {
//            deliveryPage(req, resp, "delivered");
            req.getRequestDispatcher("/views/admin/transaction/withdraw.jsp").forward(req, resp);
        }


    }
    protected void ordersPage(HttpServletRequest req, HttpServletResponse resp, String status) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        int totalItemInPage = TOTAL_ITEM_IN_PAGE;
        String indexPage = req.getParameter("index");
        if(indexPage == null) {
            indexPage = "1";
        }

        String state = "delivered";
        List<Store> storesList = storeService.findAll();
        int storeId = req.getParameter("storeId") == null ? storesList.get(0).getId() : Integer.parseInt(req.getParameter("storeId"));

        int countP = ordersService.countByStoreId(state, storeId);
        int endP = (countP/totalItemInPage);
        if (countP % totalItemInPage != 0) {
            endP ++;
        }

        Pageble pageble = new PageRequest(Integer.parseInt(indexPage), totalItemInPage, null);
        List<Orders> ordersList = ordersService.findAllByStoreId(state, storeId, pageble);
        req.setAttribute("storeId", storeId);
        req.setAttribute("storesList", storesList);
        req.setAttribute("countP", countP);
        req.setAttribute("totalItemInPage", totalItemInPage);
        req.setAttribute("endP", endP);
        req.setAttribute("tag", indexPage);
        req.setAttribute("ordersList", ordersList);
    }
}
