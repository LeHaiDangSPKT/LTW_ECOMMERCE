package com.mdk.utils;

import java.io.File;

import static com.mdk.utils.AppConstant.UPLOAD_STORE_DIRECTORY;

public class DeleteImageUtil {
    public static void main(String[] args) {
        File temp_file = new File(AppConstant.UPLOAD_STORE_DIRECTORY + "\\" + "1668438892011.jpg"); // Object of file
        // class
        if (temp_file.delete()) {
            System.out.println(temp_file.getName() + " is successfully deleted");
        } else {
            System.out.println("Failed to delete " + temp_file.getName() + " file");
        }
    }
    public static void processDelete(String storeFolder, String storeFilename) {
        File file = new File(storeFolder +"\\" + storeFilename);
        if (file.delete()) {
            System.out.println("Delete success");
        } else {
            System.out.println(storeFolder + "\\" + storeFilename);
        }
    }
}
