package com.mdk.controllers.admin;

import com.mdk.models.Store;
import com.mdk.models.User;
import com.mdk.services.IStoreService;
import com.mdk.services.impl.StoreService;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/admin/store"})
public class StoreAdminController extends HttpServlet{

    private static final long serialVersionUID = 1L;
    IStoreService storeService = new StoreService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getRequestURL().toString();

        if (url.contains("admin/store")) {
            LocalDate localDate = LocalDate.now();
            List<Store> storeListTop10 = storeService.top10Store_Orders();
			int total = storeService.totalStores();
            List<Integer> arrEachMonth = new ArrayList<Integer>();
            List<Store> storeList = storeService.findAll();
            List<Integer> arr = new ArrayList<Integer>();
            List<Integer> arrEachMonthInLastYear = new ArrayList<Integer>();
            int open = 0;
            for (Store item: storeList)
                if (item.isOpen() == true)
                    open++;
            int count = 0;
            int totalUserByMonth = 0;
            while (arrEachMonth.size() < 12) {
                count++;
                int totalEachMonth = 0;
                int totalUserByMonthInLastYear = 0;
                for (Store item: storeList)
                    if (Integer.parseInt(item.getCreatedAt().toString().substring(5,7)) == count && Integer.parseInt(item.getCreatedAt().toString().substring(0,4)) == localDate.getYear())
                        totalEachMonth++;
                    else if (Integer.parseInt(item.getCreatedAt().toString().substring(5,7)) == count && Integer.parseInt(item.getCreatedAt().toString().substring(0,4)) == (localDate.getYear()-1))
                        totalUserByMonthInLastYear++;
                totalUserByMonth += totalEachMonth;
                arr.add(totalUserByMonth);
                arrEachMonth.add(totalEachMonth);
                arrEachMonthInLastYear.add(totalUserByMonthInLastYear);
            }
            req.setAttribute("arrEachMonth", arrEachMonth);
            req.setAttribute("arrEachMonthInLastYear", arrEachMonthInLastYear);
            req.setAttribute("arrByMonth", arr);
			req.setAttribute("storeListTop10", storeListTop10);
			req.setAttribute("open", open);
            req.setAttribute("total", total);
            req.getRequestDispatcher("/views/admin/store/index.jsp").forward(req, resp);
        }

    }
}
