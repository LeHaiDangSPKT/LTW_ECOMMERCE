package com.mdk.controllers.admin;

import com.mdk.models.Orders;
import com.mdk.models.Store;
import com.mdk.models.User;
import com.mdk.paging.PageRequest;
import com.mdk.paging.Pageble;
import com.mdk.services.IOrdersService;
import com.mdk.services.IStoreService;
import com.mdk.services.ITransactionService;
import com.mdk.services.IUserService;
import com.mdk.services.impl.OrdersService;
import com.mdk.services.impl.StoreService;
import com.mdk.services.impl.TransactionService;
import com.mdk.services.impl.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import static com.mdk.utils.AppConstant.TOTAL_ITEM_IN_PAGE;

@WebServlet(urlPatterns = {"/admin/transaction/buy", "/admin/transaction/withdraw"})
public class TransactionAdminController extends HttpServlet{

    private static final long serialVersionUID = 1L;
    ITransactionService transactionService = new TransactionService();
    IOrdersService ordersService = new OrdersService();
    IStoreService storeService = new StoreService();
    IUserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getRequestURL().toString();

        if (url.contains("transaction/buy")) {
            ordersPage(req, resp, "delivered");
            req.getRequestDispatcher("/views/admin/transaction/buy.jsp").forward(req, resp);
        }
        else if (url.contains("transaction/withdraw")) {
            transactionPage(req, resp);
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
        Collections.sort(storesList, new Comparator<Store>() {
            @Override
            public int compare(Store o1, Store o2) {
                return o1.getName().compareTo(o2.getName());
            }
        });
        int storeId = req.getParameter("storeId") == null ? storesList.get(0).getId() : Integer.parseInt(req.getParameter("storeId"));

        int countP = ordersService.countByStoreId(state, storeId, null);
        int endP = (countP/totalItemInPage);
        if (countP % totalItemInPage != 0) {
            endP ++;
        }

        Pageble pageble = new PageRequest(Integer.parseInt(indexPage), totalItemInPage, null);
        List<Orders> ordersList = ordersService.findAllByStoreId(state, storeId, pageble, null);
        req.setAttribute("storeId", storeId);
        req.setAttribute("storesList", storesList);
        req.setAttribute("countP", countP);
        req.setAttribute("totalItemInPage", totalItemInPage);
        req.setAttribute("endP", endP);
        req.setAttribute("tag", indexPage);
        req.setAttribute("ordersList", ordersList);
    }
    protected void transactionPage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        int totalItemInPage = TOTAL_ITEM_IN_PAGE;
        String indexPage = req.getParameter("index");
        if(indexPage == null) {
            indexPage = "1";
        }

        List<User> userList = userService.findAll();
        Collections.sort(userList, new Comparator<User>() {
            @Override
            public int compare(User o1, User o2) {
                return o1.getLastname().compareTo(o2.getLastname());
            }
        });
        int userId = req.getParameter("userId") == null ? userList.get(0).getId() : Integer.parseInt(req.getParameter("userId"));

        int countP = transactionService.countByUserId(userId);
        int endP = (countP/totalItemInPage);
        if (countP % totalItemInPage != 0) {
            endP ++;
        }

        Pageble pageble = new PageRequest(Integer.parseInt(indexPage), totalItemInPage, null);
//        List<Orders> ordersList = transactionService.findAllByStoreId(state, storeId, pageble);
//        req.setAttribute("storeId", storeId);
//        req.setAttribute("storesList", storesList);
//        req.setAttribute("countP", countP);
//        req.setAttribute("totalItemInPage", totalItemInPage);
//        req.setAttribute("endP", endP);
//        req.setAttribute("tag", indexPage);
//        req.setAttribute("ordersList", ordersList);
    }
}