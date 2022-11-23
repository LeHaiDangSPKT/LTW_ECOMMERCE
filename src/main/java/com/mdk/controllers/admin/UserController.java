package com.mdk.controllers.admin;

import com.mdk.models.User;
import com.mdk.services.IUserService;
import com.mdk.services.impl.UserService;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/admin/user/all", "/admin/user/new"})
public class UserController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	 IUserService userService = new UserService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURL().toString();
		if (url.contains("user/all")) {
			List<User> userList = userService.findAll();
			int total = userService.totalUsers();
			req.setAttribute("userList", userList);
			req.setAttribute("total", total);
			req.getRequestDispatcher("/views/admin/user/all.jsp").forward(req, resp);
		}
		if (url.contains("user/new")) {
			List<User> userList = userService.top10Users_Orders();
			req.setAttribute("userList", userList);
			int total = userService.totalUsers();
			req.setAttribute("total", total);
			req.getRequestDispatcher("/views/admin/user/new.jsp").forward(req, resp);
		}

	}
}
