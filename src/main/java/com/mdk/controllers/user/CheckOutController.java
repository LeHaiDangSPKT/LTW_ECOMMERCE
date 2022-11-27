package com.mdk.controllers.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = { "/web/cart/price",  "/web/cart/address", "/web/cart/payment"})
public class CheckOutController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURL().toString();

		if (url.contains("/web/cart/price")) {
			req.getRequestDispatcher("/views/web/checkout.jsp").forward(req, resp);
		}
		
		if (url.contains("/web/cart/address")) {
			req.getRequestDispatcher("/views/web/addressdelivery.jsp").forward(req, resp);
		}
		
		if (url.contains("/web/cart/payment")) {
			req.getRequestDispatcher("/views/web/paymentcart.jsp").forward(req, resp);
		}

	}
}
