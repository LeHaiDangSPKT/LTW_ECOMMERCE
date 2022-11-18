package com.mdk.controllers.vendor;

import com.mdk.models.ImageStore;
import com.mdk.models.Store;
import com.mdk.services.IImageStoreService;
import com.mdk.services.IStoreService;
import com.mdk.services.impl.ImageStoreService;
import com.mdk.services.impl.StoreService;
import com.mdk.utils.DeleteImageUtil;
import com.mdk.utils.SessionUtil;
import com.mdk.utils.UploadUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import static com.mdk.utils.AppConstant.UPLOAD_STORE_DIRECTORY;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, // 10MB
        maxFileSize = 1024 * 1024 * 50, // 50MB
        maxRequestSize = 1024 * 1024 * 50) // 50MB
@WebServlet(urlPatterns = {"/vendor/home", "/vendor/store", "/vendor/store/create", "/vendor/store/edit",
"/vendor/statistic"})
public class StoreController extends HttpServlet {
    IStoreService storeService = new StoreService();
    IImageStoreService imageStoreService = new ImageStoreService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getRequestURL().toString();
        if (url.contains("home")) {
            req.getRequestDispatcher("/views/vendor/home.jsp").forward(req, resp);
        } else if (url.contains("create")) {
            req.setAttribute("ownerId", "1");
            req.getRequestDispatcher("/views/vendor/store.jsp").forward(req, resp);
        } else if (url.contains("edit")) {
            req.getRequestDispatcher("/views/vendor/store.jsp").forward(req, resp);
        }
        checkStoreExist(req, resp);
        req.getRequestDispatcher("/views/vendor/store.jsp").forward(req, resp);
    }

    // do post
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getRequestURL().toString();
        if (url.contains("create")) {
            insert(req, resp);
            resp.sendRedirect(req.getContextPath() + "/vendor/store");
        } else if (url.contains("edit")) {
            update(req, resp);
            resp.sendRedirect(req.getContextPath() + "/vendor/store");
        }
    }

    protected  void checkStoreExist(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int count = storeService.count(1);
        if (count > 0) {
            Store store = storeService.findByUserId(1);
            List<String> images = new ArrayList<>();
            for (ImageStore image : store.getImages()) {
                images.add(image.getName());
            }
            SessionUtil.getInstance().putValue(req, "STORE",store);
            req.setAttribute("store", store);
            req.setAttribute("images", images);
        }
        req.setAttribute("count", count);
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
            if(filePart.getHeader("content-disposition").contains("filename=")){
                String fileName = "" + System.currentTimeMillis();
                String realPath = UPLOAD_STORE_DIRECTORY;
                if(filePart.getName().equals("avatar")){
                    store.setAvatar(UploadUtil.processUpload(filePart.getName(), req, realPath, fileName));
                } else {
                    ImageStore image = new ImageStore();
                    image.setName(UploadUtil.processUpload(filePart.getName(), req, realPath, fileName));
                    images.add(image);
                }
            }
        }
        store.setImages(images);
        // insert store
        storeService.insert(store);
    }

    // update store
    protected void update (HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");

        //Store moi
        Store store = new Store();
        List<ImageStore> images = new ArrayList<>();

        store.setName(req.getParameter("name"));
        store.setBio(req.getParameter("bio"));
        store.setOwnerID(Integer.valueOf(req.getParameter("ownerId")));

        // Store cũ
        Store oldStore = storeService.findByUserId(1);
        List<ImageStore> oldImages = imageStoreService.findByStoreId(oldStore.getId());
        int flag = 0;
        // Xử lý ảnh
        Collection<Part> parts = req.getParts();
        for(Part filePart : parts) {
            if (filePart.getHeader("content-disposition").contains("filename=")) {
                String fileName = "" + System.currentTimeMillis();
                String realPath = UPLOAD_STORE_DIRECTORY;
                if(filePart.getName().equals("avatar")) {
                    if (filePart.getSize() == 0) {
                        store.setAvatar(oldStore.getAvatar());
                    } else {
                        if (oldStore.getAvatar() != null) {
                            // xoa anh cu
                            String fileNameAvatar = oldStore.getAvatar();
                            String storeFolder = UPLOAD_STORE_DIRECTORY;
                            DeleteImageUtil.processDelete(storeFolder, fileNameAvatar);
                        }
                        store.setAvatar(UploadUtil.processUpload(filePart.getName(), req, realPath, fileName));
                    }
                } else {
                    ImageStore image = new ImageStore();
                    if(filePart.getSize() == 0) {
                        image.setName(oldImages.get(flag).getName());
                        images.add(image);
                    } else {
                        if(oldImages.get(flag) != null) {
                            // xoa anh cu
                            String fileNameImg = oldImages.get(flag).getName();
                            File file = new File(UPLOAD_STORE_DIRECTORY + "\\" +fileNameImg);
                            if (file.delete()) {
                                System.out.println("Đã xóa");
                            } else {
                                System.out.println(UPLOAD_STORE_DIRECTORY + "\\" +fileNameImg);
                            }
                        }
                        image.setName(UploadUtil.processUpload(filePart.getName(), req, realPath, fileName));
                        images.add(image);
                    }
                    flag++;
                }
            }
        }
        store.setImages(images);
        storeService.update(store);
    }
}
