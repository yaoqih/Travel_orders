package com.qianfeng.domain;

public class Traveller {

    private String id;
    private String name;
    private String sex;
    private String phoneNum;
    private Integer credentialsType;
    private String credentialsTypeStr;
    private String credentialsNum;
    private Integer travellerType;
    private String travellerTypeStr;
    //积分
    private int points;


    public Traveller() {
    }

    public Traveller(String id, String name, String sex, String phoneNum, Integer credentialsType, String credentialsTypeStr, String credentialsNum, Integer travellerType, String travellerTypeStr, int points) {
        this.id = id;
        this.name = name;
        this.sex = sex;
        this.phoneNum = phoneNum;
        this.credentialsType = credentialsType;
        this.credentialsTypeStr = credentialsTypeStr;
        this.credentialsNum = credentialsNum;
        this.travellerType = travellerType;
        this.travellerTypeStr = travellerTypeStr;
        this.points = points;
    }

    /**
     * 获取
     * @return id
     */
    public String getId() {
        return id;
    }

    /**
     * 设置
     * @param id
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * 获取
     * @return name
     */
    public String getName() {
        return name;
    }

    /**
     * 设置
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取
     * @return sex
     */
    public String getSex() {
        return sex;
    }

    /**
     * 设置
     * @param sex
     */
    public void setSex(String sex) {
        this.sex = sex;
    }

    /**
     * 获取
     * @return phoneNum
     */
    public String getPhoneNum() {
        return phoneNum;
    }

    /**
     * 设置
     * @param phoneNum
     */
    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    /**
     * 获取
     * @return credentialsType
     */
    public Integer getCredentialsType() {
        return credentialsType;
    }

    /**
     * 设置
     * @param credentialsType
     */
    public void setCredentialsType(Integer credentialsType) {
        this.credentialsType = credentialsType;
    }

    /**
     * 获取
     * @return credentialsTypeStr
     */
    public String getCredentialsTypeStr() {
        return credentialsTypeStr;
    }

    /**
     * 设置
     * @param credentialsTypeStr
     */
    public void setCredentialsTypeStr(String credentialsTypeStr) {
        this.credentialsTypeStr = credentialsTypeStr;
    }

    /**
     * 获取
     * @return credentialsNum
     */
    public String getCredentialsNum() {
        return credentialsNum;
    }

    /**
     * 设置
     * @param credentialsNum
     */
    public void setCredentialsNum(String credentialsNum) {
        this.credentialsNum = credentialsNum;
    }

    /**
     * 获取
     * @return travellerType
     */
    public Integer getTravellerType() {
        return travellerType;
    }

    /**
     * 设置
     * @param travellerType
     */
    public void setTravellerType(Integer travellerType) {
        this.travellerType = travellerType;
    }

    /**
     * 获取
     * @return travellerTypeStr
     */
    public String getTravellerTypeStr() {
        return travellerTypeStr;
    }

    /**
     * 设置
     * @param travellerTypeStr
     */
    public void setTravellerTypeStr(String travellerTypeStr) {
        this.travellerTypeStr = travellerTypeStr;
    }

    /**
     * 获取
     * @return points
     */
    public int getPoints() {
        return points;
    }

    /**
     * 设置
     * @param points
     */
    public void setPoints(int points) {
        this.points = points;
    }

    public String toString() {
        return "Traveller{id = " + id + ", name = " + name + ", sex = " + sex + ", phoneNum = " + phoneNum + ", credentialsType = " + credentialsType + ", credentialsTypeStr = " + credentialsTypeStr + ", credentialsNum = " + credentialsNum + ", travellerType = " + travellerType + ", travellerTypeStr = " + travellerTypeStr + ", points = " + points + "}";
    }
}
