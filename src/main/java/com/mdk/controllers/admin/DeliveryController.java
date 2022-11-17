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

@WebServlet(urlPatterns = {"/admin/delivery", "/admin/delivery/add", "/admin/delivery/edit", "/admin/delivery/delete-soft", "/admin/delivery/restore", "/admin/delivery/delete"})
public class DeliveryController extends HttpServlet{

    private static final long serialVersionUID = 1L;
    IDeliveryService deliveryService = new DeliveryService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getRequestURL().toString();
        resp.setContentType("text/html;charset=UTF-8");
        if (url.contains("delivery/add")) {
            req.getRequestDispatcher("/views/admin/delivery/add.jsp").forward(req, resp);
        }
        else if (url.contains("delivery/edit")) {
            String id = req.getParameter("id");
            Delivery delivery = deliveryService.getOneById(Integer.parseInt(id));
            req.setAttribute("delivery", delivery);
            req.getRequestDispatcher("/views/admin/delivery/edit.jsp").forward(req, resp);
        }
        else if (url.contains("delivery/delete-soft")) {
            String id = req.getParameter("id");
            deliveryService.deleteSoft(Integer.parseInt(id));
            resp.sendRedirect(req.getContextPath() + "/admin/delivery");
        }
        else if (url.contains("delivery/restore")) {
            String id = req.getParameter("id");
            deliveryService.restore(Integer.parseInt(id));
            resp.sendRedirect(req.getContextPath() + "/admin/delivery");
        }
        else if (url.contains("delivery/delete")) {
            String id = req.getParameter("id");
            deliveryService.delete(Integer.parseInt(id));
            resp.sendRedirect(req.getContextPath() + "/admin/delivery");
        }

        else if (url.contains("delivery")) {
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
            req.getRequestDispatcher("/views/admin/delivery/index.jsp").include(req, resp);
        }


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getRequestURL().toString();
        resp.setContentType("text/html;charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
        if (url.contains("delivery/add")) {
            Delivery delivery = new Delivery();
            try {
                delivery.setName(req.getParameter("name"));
                delivery.setDescription(req.getParameter("description"));
                delivery.setPrice(Double.valueOf(req.getParameter("price")));
                deliveryService.insert(delivery);
                resp.sendRedirect(req.getContextPath() + "/admin/delivery");
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (url.contains("delivery/edit")) {
            Delivery delivery = new Delivery();
            try {
                delivery.setId(Integer.valueOf(req.getParameter("id")));
                delivery.setName(req.getParameter("name"));
                delivery.setDescription(req.getParameter("description"));
                delivery.setPrice(Double.valueOf(req.getParameter("price")));
                deliveryService.edit(delivery);
                resp.sendRedirect(req.getContextPath() + "/admin/delivery");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
