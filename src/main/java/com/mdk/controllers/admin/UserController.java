package com.mdk.controllers.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/admin/user/all", "/admin/user/level", "/admin/user/new"})
public class UserController extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURL().toString();

		if (url.contains("user/all")) {
			req.getRequestDispatcher("/views/admin/user/all.jsp").forward(req, resp);
		}
		if (url.contains("user/new")) {
			req.getRequestDispatcher("/views/admin/user/new.jsp").forward(req, resp);
		}
		if (url.contains("user/level")) {
			req.getRequestDispatcher("/views/admin/user/level.jsp").forward(req, resp);
		}


	}
}
