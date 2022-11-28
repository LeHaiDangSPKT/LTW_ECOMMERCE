package com.mdk.controllers.vendor;

import com.mdk.models.Orders;
import com.mdk.models.Product;
import com.mdk.models.Store;
import com.mdk.services.IOrdersService;
import com.mdk.services.IProductService;
import com.mdk.services.IStoreService;
import com.mdk.services.impl.OrdersService;
import com.mdk.services.impl.ProductService;
import com.mdk.services.impl.StoreService;
import com.mdk.utils.SessionUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/vendor/statistic"})
public class StatisticVendorController extends HttpServlet {
    IStoreService storeService = new StoreService();
    IProductService productService = new ProductService();
    IOrdersService ordersService = new OrdersService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Store store = (Store) SessionUtil.getInstance().getValue(req, "STORE");
        totalCustomer(req, resp, store);
        totalProduct(req, resp, store);
        totalOrder(req, resp, store);
        totalSale(req, resp, store);
        topSeller(req, resp, store);
        ordersNew(req, resp, store);
        req.getRequestDispatcher("/views/vendor/statistic.jsp").forward(req, resp);
    }
    protected void totalCustomer(HttpServletRequest req, HttpServletResponse resp, Store store) throws ServletException,
            IOException {
        int totalCustomer = storeService.totalCustomer(store.getId());
        req.setAttribute("totalCustomer", totalCustomer);
    }
    protected void totalProduct(HttpServletRequest req, HttpServletResponse resp, Store store) throws ServletException,
            IOException {
        int totalProduct = storeService.totalProduct(store.getId());
        req.setAttribute("totalProduct", totalProduct);
    }
    protected void totalOrder(HttpServletRequest req, HttpServletResponse resp, Store store) throws ServletException,
            IOException {
        int totalOrder = storeService.totalOrders(store.getId());
        req.setAttribute("totalOrder", totalOrder);
    }
    protected void totalSale(HttpServletRequest req, HttpServletResponse resp, Store store) throws ServletException,
            IOException {
        int totalSale = storeService.totalSale(store.getId());
        req.setAttribute("totalSale", totalSale);
    }
    protected void topSeller(HttpServletRequest req, HttpServletResponse resp, Store store) throws ServletException,
            IOException {
        List<Product> products = productService.topSeller(store.getId(), 4);
        req.setAttribute("products", products);
    }
    protected void ordersNew(HttpServletRequest req, HttpServletResponse resp, Store store) throws ServletException,
            IOException {
        List<Orders> orders = ordersService.ordersNew(store.getId());
        req.setAttribute("orders", orders);
    }
}
