package com.mdk.filter;

import com.mdk.models.User;
import com.mdk.models.UserLogin;
import com.mdk.utils.SessionUtil;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AuthorizationFilter implements Filter {
    private ServletContext context;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.context = filterConfig.getServletContext();
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;

        String url = req.getRequestURL().toString();
        if (url.contains("admin")) {
            User user = (User) SessionUtil.getInstance().getValue(req, "USERMODEL");
            if (user != null) {
                if (user.getRole().equals("ADMIN")) {
                    chain.doFilter(request, response);
                } else {
                    resp.sendRedirect(req.getContextPath() + "/login");
                }
            } else {
                resp.sendRedirect((req.getContextPath() + "/login"));
            }
        } else {
            chain.doFilter(request, response);
        }
    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }
}
