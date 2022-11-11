package com.mdk.controllers.admin;

import com.mdk.models.Transaction;
import com.mdk.services.ITransactionService;
import com.mdk.services.impl.TransactionService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/admin/transaction"})
public class TransactionController extends HttpServlet{

    private static final long serialVersionUID = 1L;
    ITransactionService transactionService = new TransactionService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getRequestURL().toString();

        if (url.contains("transaction")) {
            List<Transaction> transactionList = transactionService.findAll();
            for (Transaction item: transactionList) {
                if (item.getUp()) {
                    item.setIsUpString("Nạp tiền");
                } else {
                    item.setIsUpString("Rút tiền");
                }
            }
            req.setAttribute("transactionList", transactionList);
            req.getRequestDispatcher("/views/admin/transaction/index.jsp").forward(req, resp);
        }


    }
}
