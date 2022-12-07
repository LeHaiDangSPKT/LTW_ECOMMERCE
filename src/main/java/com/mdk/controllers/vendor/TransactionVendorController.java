package com.mdk.controllers.vendor;

import com.mdk.models.Product;
import com.mdk.models.Store;
import com.mdk.models.Transaction;
import com.mdk.models.User;
import com.mdk.paging.PageRequest;
import com.mdk.paging.Pageble;
import com.mdk.services.IStoreService;
import com.mdk.services.ITransactionService;
import com.mdk.services.IUserService;
import com.mdk.services.impl.StoreService;
import com.mdk.services.impl.TransactionService;
import com.mdk.services.impl.UserService;
import com.mdk.utils.MessageUtil;
import com.mdk.utils.SessionUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import static com.mdk.utils.AppConstant.*;

@WebServlet(urlPatterns = {"/vendor/transaction"})
public class TransactionVendorController extends HttpServlet {
    ITransactionService transactionService =  new TransactionService();
    IUserService userService = new UserService();
    IStoreService storeService = new StoreService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        transactionPage(req, resp);
        getWallet(req, resp);
        MessageUtil.showMessage(req, resp);
        req.getRequestDispatcher("/views/vendor/transaction.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (withDraw(req, resp)) {
            resp.sendRedirect(req.getContextPath() + "/vendor/transaction?message=transaction_success");
        } else {
            resp.sendRedirect(req.getContextPath() + "/vendor/transaction?message=transaction_error");
        }
    }

    protected void transactionPage(HttpServletRequest req, HttpServletResponse resp) throws ServletException,
            IOException{
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");

        int totalItemInPage = TOTAL_ITEM_IN_PAGE;
        Store store = (Store) SessionUtil.getInstance().getValue(req, STORE_MODEL);
        String indexPage = req.getParameter("index");
        String dateStart = req.getParameter("start");
        String dateEnd = req.getParameter("end");

        if(indexPage == null) {
            indexPage = "1";
        }
        int countP = transactionService.count(store.getId(), dateStart, dateEnd);
        int endP = (countP/totalItemInPage);
        if (countP % totalItemInPage != 0) {
            endP ++;
        }

        Pageble pageble = new PageRequest(Integer.parseInt(indexPage), totalItemInPage, null);
        List<Transaction> transactions = new ArrayList<>();
        transactions = transactionService.findAll(pageble, store.getId(), dateStart, dateEnd);

        req.setAttribute("count", countP);
        req.setAttribute("total", totalItemInPage);
        req.setAttribute("endP", endP);
        req.setAttribute("tag", indexPage);
        req.setAttribute("transactions", transactions);
        req.setAttribute("dateStart", dateStart);
        req.setAttribute("dateEnd", dateEnd);
    }
    protected void getWallet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Store store = (Store) SessionUtil.getInstance().getValue(req, STORE_MODEL);
        User user = (User) SessionUtil.getInstance().getValue(req, USER_MODEL);
        Double wallet = store.geteWallet();
        String nameUser =  user.getFirstname() + " " + user.getLastname();

        req.setAttribute("wallet", wallet);
        req.setAttribute("user", nameUser);

    }
    protected boolean withDraw(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) SessionUtil.getInstance().getValue(req, USER_MODEL);
        Store store = (Store) SessionUtil.getInstance().getValue(req, STORE_MODEL);
        Double amount = Double.valueOf(req.getParameter("amount"));
        if (store.geteWallet() > amount) {
            Transaction transaction = new Transaction();
            transaction.setUserId(user.getId());
            transaction.setStoreId(store.getId());
            transaction.setUp(true);
            transaction.setAmount(amount);
            transactionService.insert(transaction);
            Double newWalletUser = user.geteWallet() + amount;
            Double newWalletStore = store.geteWallet() - amount;
            userService.updateWallet(user.getId(), newWalletUser);
            storeService.updateWallet(store.getId(), newWalletStore);

            user.seteWallet(newWalletUser);
            store.seteWallet(newWalletStore);
            SessionUtil.getInstance().removeValue(req, USER_MODEL);
            SessionUtil.getInstance().removeValue(req, STORE_MODEL);
            SessionUtil.getInstance().putValue(req, USER_MODEL, user);
            SessionUtil.getInstance().putValue(req, STORE_MODEL, store);
            return true;
        } else {
            return false;
        }
    }
}
