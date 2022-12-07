package com.mdk.models;


public class Transaction extends AbstractModel<Transaction>{
    private int userId ;
    private String nameUser;
    private int storeId;
    private boolean isUp   ;
    private Double amount ;
    private String isUpString;
    public String getIsUpString() {
        return isUpString;
    }

    public String getNameUser() {
        return nameUser;
    }

    public void setNameUser(String nameUser) {
        this.nameUser = nameUser;
    }

    public void setIsUpString(String isUpString) {
        this.isUpString = isUpString;
    }

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

    public boolean getUp() {
        return isUp;
    }

    public void setUp(boolean up) {
        isUp = up;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }
}
