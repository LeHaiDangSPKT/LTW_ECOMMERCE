package com.mdk.models;


public class Store extends AbstractModel<Store> {
    private String name;
    private String bio;
    private int ownerId;
    private boolean isOpen;
    private String avatar;
    private String featured_images;
    private int rating;
    private Double e_wallet;
    private int total;

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    public int getOwnerId() {
        return ownerId;
    }

    public void setOwnerId(int ownerId) {
        this.ownerId = ownerId;
    }

    public boolean isOpen() {
        return isOpen;
    }

    public void setOpen(boolean open) {
        isOpen = open;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getFeatured_images() {
        return featured_images;
    }

    public void setFeatured_images(String featured_images) {
        this.featured_images = featured_images;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public Double getE_wallet() {
        return e_wallet;
    }

    public void setE_wallet(Double e_wallet) {
        this.e_wallet = e_wallet;
    }
}
