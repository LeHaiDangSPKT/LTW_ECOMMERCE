package com.mdk.utils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static com.mdk.utils.AppConstant.*;
import static com.mdk.utils.AppConstant.ALERT_UPDATE_SUCCESS;

public class MessageUtil extends HttpServlet {
    public static void showMessage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String message = req.getParameter("message");
        String messageResp = "";
        String alert = "";
        if(message != null) {
            if (message.equals("insert_success")) {
                messageResp = MESSAGE_INSERT_SUCCESS;
                alert = ALERT_INSERT_SUCCESS;
            } else if (message.equals("update_success")) {
                messageResp = MESSAGE_UPDATE_SUCCESS;
                alert = ALERT_UPDATE_SUCCESS;
            }
            req.setAttribute("message", messageResp);
            req.setAttribute("alert", alert);
        }
    }
}
