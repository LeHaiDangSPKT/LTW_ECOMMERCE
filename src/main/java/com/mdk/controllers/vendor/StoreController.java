package com.mdk.controllers.vendor;

import com.mdk.models.ImageStore;
import com.mdk.models.Store;
import com.mdk.services.IImageStoreService;
import com.mdk.services.IStoreService;
import com.mdk.services.impl.ImageStoreService;
import com.mdk.services.impl.StoreService;
import com.mdk.utils.SessionUtil;
import com.mdk.utils.UploadUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, // 10MB
        maxFileSize = 1024 * 1024 * 50, // 50MB
        maxRequestSize = 1024 * 1024 * 50) // 50MB
@WebServlet(urlPatterns = {"/vendor/home", "/vendor/store", "/vendor/create-store", "/vendor/edit-store",
"/vendor/statistic"})
public class StoreController extends HttpServlet {

    IStoreService storeService = new StoreService();
    IImageStoreService imageStoreService = new ImageStoreService();

    // do get
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getRequestURL().toString();
        if (url.contains("home")) {
//            Store store = (Store) SessionUtil.getInstance().getValue(req, "STORE");
//            List<String> images = new ArrayList<>();
//            for (ImageStore image : store.getImages()) {
//                images.add(image.getName());
//            }
//            req.setAttribute("images", images);
            req.getRequestDispatcher("/views/vendor/home.jsp").forward(req, resp);
        } else if (url.contains("create-store")) {
            int count = storeService.count();
            req.setAttribute("count", count);
            req.setAttribute("action", "add");
            // set session
            Store store = storeService.findByUserId(2);
            SessionUtil.getInstance().putValue(req, "STORE", store);
            req.getRequestDispatcher("/views/vendor/store.jsp").forward(req, resp);
        } else if (url.contains("store")) {
            req.getRequestDispatcher("/views/vendor/store.jsp").forward(req, resp);
        } else if (url.contains("edit-store")) {
            req.getRequestDispatcher("/views/vendor/store.jsp").forward(req, resp);
        } else if (url.contains("statistic")) {
            req.getRequestDispatcher("/views/vendor/statistic.jsp").forward(req, resp);
        }
    }

    // do post
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getRequestURL().toString();
        if (url.contains("create-store")) {
            insert(req, resp);

        }
    }

    // Xử lý create store
    protected void insert(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");

        Store store = new Store();
        List<ImageStore> images = new ArrayList<>();
        // Lấy parameter từ form store
        store.setName(req.getParameter("name"));
        store.setBio(req.getParameter("bio"));
        store.setOwnerID(Integer.valueOf(req.getParameter("ownerId")));
        // xử lý ảnh
        Collection<Part> parts = req.getParts();
        for(Part filePart : parts) {
            ImageStore image = new ImageStore();
            if(filePart.getHeader("content-disposition").contains("filename=")){
                String fileName = "" + System.currentTimeMillis();
                String realPath = req.getServletContext().getRealPath("/uploads");
                if(filePart.getName().equals("avatar")){
                    store.setAvatar(UploadUtil.processUpload(filePart.getName(), req, realPath, fileName));
                } else {
                    image.setName(UploadUtil.processUpload(filePart.getName(), req, realPath, fileName));
                    images.add(image);
                }
            }
        }
        store.setImages(images);
        // insert store
        storeService.insert(store);
    }
}
