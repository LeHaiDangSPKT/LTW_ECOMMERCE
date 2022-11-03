package com.mdk.models;

public class ImageProduct extends AbstractModel<ImageProduct>{
    private int pid;
    private String url;

    public ImageProduct(int pid, String url) {
        this.pid = pid;
        this.url = url;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
