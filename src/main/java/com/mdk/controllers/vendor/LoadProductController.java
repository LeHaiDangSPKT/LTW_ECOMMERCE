package com.mdk.controllers.vendor;

import com.mdk.models.Product;
import com.mdk.services.IProductService;
import com.mdk.services.impl.ProductService;
import com.mdk.utils.AppConstant;
import org.apache.commons.io.IOUtils;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/vendor/product/category")
public class LoadProductController extends HttpServlet {
    IProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        String categoryId = req.getParameter("categoryId");
        List<Product> products = new ArrayList<>();
        if (categoryId.isEmpty()) {
            products = productService.findAll();
        } else {
            products = productService.findByCategoryId(Integer.valueOf(categoryId));
        }
        PrintWriter out = resp.getWriter();
        int count = 0;
        for (Product o : products) {
            count++;
            String urlImg = req.getContextPath() + "/image?fname="+o.getImages().get(0).getName()+"&type=product";
            String urlEdit =
                    req.getContextPath() + "/vendor/product/edit?pname="+o.getName()+"&storeId="+o.getStoreId();
            out.println(
                    "                                    <tr class=\"item-product\">\n" +
                    "                                        <td>"+count+"</td>\n" +
                    "                                        <td>\n" +
                    "                                            <img class=\"img-fluid rounded\" src=\""+urlImg+"\" " +
                    "alt=\"pic\">\n" +
                    "                                        </td>\n" +
                    "                                        <td>"+o.getName()+"</td>\n" +
                    "                                        <td>"+o.getCategory().getName()+"</td>\n" +
                    "                                        <td>"+o.getDescription()+"</td>\n" +
                    "                                        <td>"+o.getPrice()+" vnd</td>\n" +
                    "                                        <td>"+o.getPromotionalPrice()+" vnd</td>\n" +
                    "                                        <td>"+o.getQuantity()+"</td>\n" +
                    "                                        <td>"+o.getSold()+"</td>\n" +
                    "                                        <td>\n" +
                    "                                            <div class=\"flex align-items-center list-user-action\">\n" +
                    "                                                <a class=\"iq-bg-primary\" data-toggle=\"tooltip\"\n" +
                    "                                                   data-placement=\"center\"\n" +
                    "                                                   title=\"\" data-original-title=\"Edit\"\n" +
                    "                                                   href=\""+urlEdit+"\">" +
                    "                                                    <i class=\"fa-solid fa-pen-to-square\"></i>\n" +
                    "                                                </a>\n" +
                    "                                                <a class=\"iq-bg-primary\" data-toggle=\"modal\" data-placement=\"center\"\n" +
                    "                                                   data-target=\"#modal-delete\"\n" +
                    "                                                   title=\"\" data-original-title=\"Delete\"\n" +
                    "                                                   href=\"#\"\n" +
                    "                                                   onclick=\"GetIdProduct(event)\"\n" +
                    "                                                >\n" +
                    "                                                    <i class=\"fa-solid fa-trash\"\n" +
                    "                                                       id=\""+o.getId()+"\"\n" +
                    "                                                       style=\"padding: 10px; transform: translate(-17%, -18%);\"></i>\n" +
                    "                                                </a>\n" +
                    "                                            </div>\n" +
                    "                                        </td>\n" +
                    "                                    </tr>\n" +
                    "                                <input type=\"hidden\" id = \"productId\" value=\"\">\n");

        }
    }
}
