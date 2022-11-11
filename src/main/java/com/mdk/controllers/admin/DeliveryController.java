package com.mdk.controllers.admin;

import com.mdk.dao.IDeliveryDAO;
import com.mdk.models.Category;
import com.mdk.models.Delivery;
import com.mdk.services.IDeliveryService;
import com.mdk.services.impl.DeliveryService;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/admin/delivery", "/admin/delivery/add", "/admin/delivery/edit"})
public class DeliveryController extends HttpServlet{

    private static final long serialVersionUID = 1L;
    IDeliveryService deliveryService = new DeliveryService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getRequestURL().toString();

        if (url.contains("delivery/add")) {
            req.getRequestDispatcher("/views/admin/delivery/add.jsp").forward(req, resp);
        }
        if (url.contains("delivery/edit")) {
            req.getRequestDispatcher("/views/admin/delivery/edit.jsp").forward(req, resp);
        }
        if (url.contains("delivery")) {
            List<Delivery> deliveryList = deliveryService.findAll();
            List<Delivery> deliveryListDeleted = new ArrayList<Delivery>();
            List<Delivery> deliveryListNotDelete = new ArrayList<Delivery>();
            for (Delivery item: deliveryList) {
                if (item.isDeleted()) {
                    deliveryListDeleted.add(item);
                } else {
                    deliveryListNotDelete.add(item);
                }
            }
            req.setAttribute("deliveryListDeleted", deliveryListDeleted);
            req.setAttribute("deliveryListNotDelete", deliveryListNotDelete);
            req.getRequestDispatcher("/views/admin/delivery/index.jsp").forward(req, resp);
        }


    }
}
