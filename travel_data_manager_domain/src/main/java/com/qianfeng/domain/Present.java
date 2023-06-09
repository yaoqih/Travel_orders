package com.qianfeng.domain;

public class Present {
    private String id;
    private String presentName;
    private String presentDesc;
    private Integer requiredPoints;
    private Integer stock;

    public Present() {
    }

    public Present(String id, String presentName, String presentDesc, Integer requiredPoints, Integer stock) {
        this.id = id;
        this.presentName = presentName;
        this.presentDesc = presentDesc;
        this.requiredPoints = requiredPoints;
        this.stock = stock;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPresentName() {
        return presentName;
    }

    public void setPresentName(String presentName) {
        this.presentName = presentName;
    }

    public String getPresentDesc() {
        return presentDesc;
    }

    public void setPresentDesc(String presentDesc) {
        this.presentDesc = presentDesc;
    }

    public Integer getRequiredPoints() {
        return requiredPoints;
    }

    public void setRequiredPoints(Integer requiredPoints) {
        this.requiredPoints = requiredPoints;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    @Override
    public String toString() {
        return "Present{" +
                "id='" + id + '\'' +
                ", presentName='" + presentName + '\'' +
                ", presentDesc='" + presentDesc + '\'' +
                ", requiredPoints=" + requiredPoints +
                ", stock=" + stock +
                '}';
    }
}
