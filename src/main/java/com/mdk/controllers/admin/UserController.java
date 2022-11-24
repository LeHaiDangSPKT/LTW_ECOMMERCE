package com.mdk.controllers.admin;

import com.mdk.models.User;
import com.mdk.paging.PageRequest;
import com.mdk.paging.Pageble;
import com.mdk.services.IUserService;
import com.mdk.services.impl.UserService;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import static com.mdk.utils.AppConstant.TOTAL_ITEM_IN_PAGE;

@WebServlet(urlPatterns = {"/admin/user/all", "/admin/user/closest"})
public class UserController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	 IUserService userService = new UserService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURL().toString();
		if (url.contains("user/all")) {
			usersPage(req, resp);
			req.getRequestDispatcher("/views/admin/user/all.jsp").forward(req, resp);
		}
		else if (url.contains("user/closest")) {
			List<User> userList = userService.top10Users_Orders();
			req.setAttribute("userList", userList);
			int countP = userService.count();
			req.setAttribute("countP", countP);
			req.getRequestDispatcher("/views/admin/user/closest.jsp").forward(req, resp);
		}

	}
	protected void usersPage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");


		int totalItemInPage = TOTAL_ITEM_IN_PAGE;
		String indexPage = req.getParameter("index");
		if(indexPage == null) {
			indexPage = "1";
		}

		int countP = userService.count();
		int endP = (countP/totalItemInPage);
		if (countP % totalItemInPage != 0) {
			endP ++;
		}

		Pageble pageble = new PageRequest(Integer.parseInt(indexPage), totalItemInPage, null);
		List<User> userList = userService.findAll(pageble);
		req.setAttribute("userList", userList);
		req.setAttribute("countP", countP);
		req.setAttribute("endP", endP);
		req.setAttribute("tag", indexPage);
		req.setAttribute("totalItemInPage", totalItemInPage);
	}
}
