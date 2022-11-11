package com.mdk.controllers.admin;

import com.mdk.models.Store;
import com.mdk.services.IStoreService;
import com.mdk.services.impl.StoreService;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/admin/store"})
public class StoreController extends HttpServlet{

    private static final long serialVersionUID = 1L;
    IStoreService storeService = new StoreService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getRequestURL().toString();

        if (url.contains("admin/store")) {
            List<Store> storeList = storeService.top10Store_Orders();
			int total = storeService.totalStores();
			req.setAttribute("storeList", storeList);
			req.setAttribute("total", total);
            req.getRequestDispatcher("/views/admin/store/index.jsp").forward(req, resp);
        }

    }
}
