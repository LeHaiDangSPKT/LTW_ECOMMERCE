package com.mdk.services.impl;

import com.mdk.dao.IDetailOrdersItemDAO;
import com.mdk.dao.impl.DetailOrdersItemDAO;
import com.mdk.models.DetailOrdersItem;
import com.mdk.services.IDetailOrdersItemService;

public class DetailOrdersItemService implements IDetailOrdersItemService {
    IDetailOrdersItemDAO detailOrdersItemDAO = new DetailOrdersItemDAO();
    @Override
    public DetailOrdersItem findOneByOrderId(int id) {
        return detailOrdersItemDAO.findOneByOrderId(id);
    }
}
