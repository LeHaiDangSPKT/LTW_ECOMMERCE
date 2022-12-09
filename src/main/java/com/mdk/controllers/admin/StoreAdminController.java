package com.mdk.controllers.admin;

import com.mdk.models.Store;
import com.mdk.models.User;
import com.mdk.paging.PageRequest;
import com.mdk.paging.Pageble;
import com.mdk.services.IStoreService;
import com.mdk.services.IUserService;
import com.mdk.services.impl.StoreService;
import com.mdk.services.impl.UserService;
import com.mdk.utils.ExportExcel;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import static com.mdk.utils.AppConstant.TOTAL_ITEM_IN_PAGE;

@WebServlet(urlPatterns = {"/admin/store/all", "/admin/store/statistic", "/admin/store/all/delete-soft", "/admin/store/all/delete", "/admin/store/all/restore"})
public class StoreAdminController extends HttpServlet{

    private static final long serialVersionUID = 1L;
    IStoreService storeService = new StoreService();
    IUserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getRequestURL().toString();
        if (url.contains("admin/store/all/delete-soft")) {
            String id = req.getParameter("id");
            storeService.deleteSoft(Integer.parseInt(id));
            resp.sendRedirect(req.getContextPath() + "/admin/store/all?state=true");
        }
        else if (url.contains("admin/store/all/delete")) {
            String id = req.getParameter("id");
            storeService.delete(Integer.parseInt(id));
            resp.sendRedirect(req.getContextPath() + "/admin/store/all?state=false");
        }
        else if (url.contains("admin/store/all/restore")) {
            String id = req.getParameter("id");
            storeService.restore(Integer.parseInt(id));
            resp.sendRedirect(req.getContextPath() + "/admin/store/all?state=false");
        }
        else if (url.contains("admin/store/all")) {
            storePage(req, resp);
            List<Store> reportStore = storeService.findAllForReport();
            for (Store item: reportStore)
                item.setAvatar(userService.findById(item.getOwnerID()).getLastname() + " " + userService.findById(item.getOwnerID()).getFirstname());
            final String excelFilePath = "E:\\reportStore.xls";
            ExportExcel.writeExcel(reportStore, excelFilePath, Store.getColumns(), "reportStore");
            req.getRequestDispatcher("/views/admin/store/all.jsp").forward(req, resp);
        }
        else if (url.contains("admin/store/statistic")) {
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
            req.getRequestDispatcher("/views/admin/store/statistic.jsp").forward(req, resp);
        }

    }

    protected void storePage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        int totalItemInPage = TOTAL_ITEM_IN_PAGE;
        String indexPage = req.getParameter("index");
        String searchKey = req.getParameter("search");
        if(indexPage == null) {
            indexPage = "1";
        }
        String state = req.getParameter("state") == null ? "true" : req.getParameter("state");
        int countP = storeService.count(searchKey, state);
        int endP = (countP/totalItemInPage);
        if (countP % totalItemInPage != 0) {
            endP ++;
        }

        Pageble pageble = new PageRequest(Integer.parseInt(indexPage), totalItemInPage, null);
        List<Store> storeList = storeService.findAll(pageble, searchKey, state);
        List<String> listNameOwner = new ArrayList<String>();
        for (Store item: storeList) {
            User user = userService.findById(item.getOwnerID());
            listNameOwner.add(user.getLastname() +" "+ user.getFirstname());
        }
        req.setAttribute("state", state);
        req.setAttribute("countP", countP);
        req.setAttribute("totalItemInPage", totalItemInPage);
        req.setAttribute("endP", endP);
        req.setAttribute("tag", indexPage);
        req.setAttribute("storeList", storeList);
        req.setAttribute("listNameOwner", listNameOwner);
    }
}
