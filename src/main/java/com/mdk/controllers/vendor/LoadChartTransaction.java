package com.mdk.controllers.vendor;

import com.google.gson.Gson;
import com.mdk.models.Store;
import com.mdk.services.IStoreService;
import com.mdk.services.impl.StoreService;
import com.mdk.utils.SessionUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.mdk.utils.AppConstant.STORE_MODEL;

@WebServlet(urlPatterns = "/vendor/transaction/loadchart")
public class LoadChartTransaction extends HttpServlet {

}
