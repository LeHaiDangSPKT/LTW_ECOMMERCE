package com.mdk.models;
public class Delivery extends AbstractModel<Delivery>{
    private String name;
    private String description;
    private double price;
    private boolean isDeleted;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public boolean isIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(boolean idDeleted) {
        this.isDeleted = idDeleted;
    }
}
