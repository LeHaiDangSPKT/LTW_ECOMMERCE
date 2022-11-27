package com.mdk.controllers.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mdk.models.Product;
import com.mdk.models.User;
import com.mdk.services.IProductService;
import com.mdk.services.IUserService;
import com.mdk.services.impl.ProductService;
import com.mdk.services.impl.UserService;
import com.mdk.utils.SessionUtil;

@WebServlet(urlPatterns = { "/web" })
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	IProductService productService = new ProductService();
	IUserService userService = new UserService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURL().toString();

		if(url.contains("/web")) {
			User user = userService.findById(1);
			List<Product> productList = productService.findAllProductPermited();
			List<Product> topSellerList = productService.getTopSeller(10);
			List<Product> topRatingList = productService.getTopRating(10);
			
			SessionUtil.getInstance().putValue(req, "USER",user);
			req.setAttribute("productList", productList);
			req.setAttribute("topSellerList", topSellerList);
			req.setAttribute("topRatingList", topRatingList);
			req.getRequestDispatcher("/views/web/home.jsp").forward(req, resp);
		}
	}
}
