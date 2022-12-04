package com.mdk.controllers.common;

import com.mdk.models.User;
import com.mdk.models.UserLogin;
import com.mdk.services.IUserService;
import com.mdk.services.impl.UserService;
import com.mdk.utils.SessionUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = { "/login", "/logout", "/home", "/signup", "/signup/create" })
public class LoginController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	IUserService userService = new UserService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURL().toString();
		if (url.contains("signup")) {
			req.getRequestDispatcher("/views/signup.jsp").forward(req, resp);
		} else if (url.contains("login")) {
			req.getRequestDispatcher("/views/login.jsp").forward(req, resp);
		} else if (url.contains("logout")) {
			/// session
			req.getRequestDispatcher("/views/home.jsp").forward(req, resp);
			;
		} else {
			req.getRequestDispatcher("/views/home.jsp").forward(req, resp);
			;
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURL().toString();
		if (url.contains("create")) {
			req.setCharacterEncoding("UTF-8");
			resp.setCharacterEncoding("UTF-8");
			insert(req,resp);
			resp.sendRedirect(req.getContextPath() + "/signup");
		}
		else if (url.contains("login")) {
			UserLogin userLogin = new UserLogin();
			String username = req.getParameter("username");
			String password = req.getParameter("password");
			User user = userService.findOneByUsernameAndPassword(username, password);
			if (user != null) {
				SessionUtil.getInstance().putValue(req, "USERMODEL", user);
				if (user.getRole().equals("ADMIN")) {
					resp.sendRedirect(req.getContextPath() + "/admin/user/all");
				} else if (user.getRole().equals("user")) {
					resp.sendRedirect(req.getContextPath() + "/web");
				} else {
					resp.sendRedirect(req.getContextPath() + "/vendor/home");
				}
			} else {
				resp.sendRedirect(req.getContextPath() + "/login?");
			}
		} else if (url.contains("logout")) {
			resp.sendRedirect(req.getContextPath() + "/home");
		}
	}
	
	protected void insert(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user = new User();
		
		user.setFirstname(req.getParameter("firstname"));
		user.setLastname(req.getParameter("lastname"));
		user.setId_card(req.getParameter("id_card"));
		user.setEmail(req.getParameter("email"));
		user.setPhone(req.getParameter("phone"));
		user.setPassword(req.getParameter("password"));
		user.setGender("1".equals(req.getParameter("gender")));
		
		userService.insert(user);
		
	}
}
