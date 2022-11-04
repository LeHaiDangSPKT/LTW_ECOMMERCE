package com.mdk.models;

import java.math.BigDecimal;

public class Orders extends AbstractModel<Orders> {
    private int userId;
    private int storeId;
    private int deliveryId;
    private String address;
    private int phone;
    private String status;
    private Double amountFromUser;
    private Double amountToStore;
    private Double amountToGD;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getStoreId() {
        return storeId;
    }

    public void setStoreId(int storeId) {
        this.storeId = storeId;
    }

    public int getDeliveryId() {
        return deliveryId;
    }

    public void setDeliveryId(int deliveryId) {
        this.deliveryId = deliveryId;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Double getAmountFromUser() {
        return amountFromUser;
    }

    public void setAmountFromUser(Double amountFromUser) {
        this.amountFromUser = amountFromUser;
    }

    public Double getAmountToStore() {
        return amountToStore;
    }

    public void setAmountToStore(Double amountToStore) {
        this.amountToStore = amountToStore;
    }

    public Double getAmountToGD() {
        return amountToGD;
    }

    public void setAmountToGD(Double amountToGD) {
        this.amountToGD = amountToGD;
    }
}
