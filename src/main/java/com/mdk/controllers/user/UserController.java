package com.mdk.controllers.user;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mdk.models.ImageStore;
import com.mdk.models.User;
import com.mdk.services.IUserService;
import com.mdk.services.impl.UserService;
import com.mdk.utils.SessionUtil;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, // 10MB
		maxFileSize = 1024 * 1024 * 50, // 50MB
		maxRequestSize = 1024 * 1024 * 50) // 50MB

@WebServlet(urlPatterns = { "/web/user/search", "/web/user/profile", "/web/user/edit", "/web/user/edit/update" })
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	IUserService userService = new UserService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURL().toString();

		if (url.contains("search")) {

			req.getRequestDispatcher("/views/web/searchuser.jsp").forward(req, resp);
		} else if (url.contains("profile")) {
			int id = ((User) SessionUtil.getInstance().getValue(req, "USER")).getId();
			User user = userService.findById(id);

			req.setAttribute("user", user);
			req.getRequestDispatcher("/views/web/userprofile.jsp").forward(req, resp);
		} else if (url.contains("edit")) {
			int id = ((User) SessionUtil.getInstance().getValue(req, "USER")).getId();
			User user = userService.findById(id);
			
			req.setAttribute("id", id);
			req.setAttribute("user", user);
			req.getRequestDispatcher("/views/web/editprofile.jsp").forward(req, resp);
		}
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURL().toString();

		if (url.contains("search")) {
			req.setCharacterEncoding("UTF-8");
			resp.setCharacterEncoding("UTF-8");
			String searchkeyword = req.getParameter("searchkeyword");
			List<User> userListSearch = userService.findBySearching(searchkeyword);

			req.setAttribute("userListSearch", userListSearch);
			req.getRequestDispatcher("/views/web/searchuser.jsp").forward(req, resp);
		} else if (url.contains("update")) {
			update(req,resp);
			resp.sendRedirect(req.getContextPath() + "/web/user/edit?id=1");
		}
	}

	protected void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		User user = new User();
        List<ImageStore> images = new ArrayList<>();
        
        
        user.setFirstname(req.getParameter("firstname"));
        user.setLastname(req.getParameter("lastname"));
        user.setEmail(req.getParameter("email"));
        user.setPhone(req.getParameter("phone"));
        
        
        userService.update(user);
	}
	
	protected void updatePassword(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		User user = new User();
        List<ImageStore> images = new ArrayList<>();
        
        
        user.setPassword(req.getParameter("password"));
        userService.update(user);
	}
}
