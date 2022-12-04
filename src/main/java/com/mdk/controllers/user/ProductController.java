package com.mdk.controllers.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mdk.models.Category;
import com.mdk.models.Product;
import com.mdk.models.Store;
import com.mdk.services.ICategoryService;
import com.mdk.services.IProductService;
import com.mdk.services.IStoreService;
import com.mdk.services.impl.CategoryService;
import com.mdk.services.impl.ProductService;
import com.mdk.services.impl.StoreService;

@WebServlet(urlPatterns = { "/web/book/search", "/web/book/detail" })
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	IProductService productService = new ProductService();
	ICategoryService categoryService = new CategoryService();
	IStoreService storeService = new StoreService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURL().toString();
		if (url.contains("search")) {
			List<Category> categoryList = categoryService.findAll();
			List<Store> storeList = storeService.findAll();
			List<Product> searchProductList = productService.findBySearching("", 0, 0, -1, 0.0, 1000000.0);
			
			req.setAttribute("categoryList", categoryList);
			req.setAttribute("storeList", storeList);
			req.setAttribute("searchProductList", searchProductList);
			req.getRequestDispatcher("/views/web/searchbook.jsp").forward(req, resp);
		}
		else if (url.contains("detail")) {
			int id = Integer.parseInt(req.getParameter("id"));
			Product product = productService.findOneById(id);
			
			req.setAttribute("product", product);
			req.getRequestDispatcher("/views/web/productdetail.jsp").forward(req, resp);
			
		}

	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURL().toString();

		if (url.contains("search")) {
			req.setCharacterEncoding("UTF-8");
			resp.setCharacterEncoding("UTF-8");
			List<Category> categoryList = categoryService.findAll();
			List<Store> storeList = storeService.findAll();
			String searchkeyword = req.getParameter("search");
			
			int categorySearch = 0;
			int storeSearch = 0;
			int rating = -1;
			double minPrice = 0;
			double maxPrice = 1000000;
			
			if(req.getParameter("categorySearch")!=null)
				categorySearch = Integer.parseInt(req.getParameter("categorySearch"));
			if(req.getParameter("storeSearch")!=null)
				storeSearch = Integer.parseInt(req.getParameter("storeSearch"));
			if(req.getParameter("ratingSearch")!=null)
				rating = Integer.parseInt(req.getParameter("ratingSearch"));
			if(req.getParameter("minPriceSearch")!=null)
				minPrice = Double.parseDouble(req.getParameter("minPriceSearch"));
			if(req.getParameter("maxPriceSearch")!=null)	 
				maxPrice = Double.parseDouble(req.getParameter("maxPriceSearch"));
			
			List<Product> searchProductList = productService.findBySearching(searchkeyword.trim(), categorySearch, storeSearch, rating, minPrice, maxPrice);
				
			req.setAttribute("categoryList", categoryList);
			req.setAttribute("storeList", storeList);
			req.setAttribute("searchProductList", searchProductList);
			
			req.setAttribute("searchkeyword", searchkeyword);
			req.setAttribute("categorySearch", categorySearch);
			req.setAttribute("storeSearch", storeSearch);
			req.setAttribute("rating", rating);
			req.setAttribute("minPrice", minPrice);
			req.setAttribute("maxPrice", maxPrice);
			
			req.getRequestDispatcher("/views/web/searchbook.jsp").forward(req, resp);
		}
	}
}