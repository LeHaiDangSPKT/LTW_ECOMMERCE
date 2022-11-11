package com.mdk.models;


public class Transaction extends AbstractModel<Transaction>{
    private int userId ;
    private int storeId;
    private Boolean isUp   ;
    private Double amount ;
    private String isUpString;
    public String getIsUpString() {
        return isUpString;
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

    public Boolean getUp() {
        return isUp;
    }

    public void setUp(Boolean up) {
        isUp = up;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }
}
