package com.mdk.services.impl;

import com.mdk.dao.IImageDAO;
import com.mdk.dao.impl.ImageDAO;
import com.mdk.models.Image;
import com.mdk.services.IImageService;

public class ImageService implements IImageService {
    IImageDAO imageDAO = new ImageDAO();

    @Override
    public void insert(Image image) {
        imageDAO.insert(image);
    }
}
