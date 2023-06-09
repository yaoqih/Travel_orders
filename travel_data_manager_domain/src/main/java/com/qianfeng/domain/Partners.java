package com.qianfeng.domain;
import org.springframework.format.annotation.DateTimeFormat;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Partners {
    private String id;
    //合作商名
    private String name;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date sign_time;
    private String sign_timeStr;
    //合作商联系人名
    private String contact_name;
    private String contact_tel;
    private String address;

    public Partners() {
    }

    public Partners(String id, String name, Date sign_time, String sign_timeStr, String contact_name, String contact_tel, String address) {
        this.id = id;
        this.name = name;
        this.sign_time = sign_time;
        this.sign_timeStr = sign_timeStr;
        this.contact_name = contact_name;
        this.contact_tel = contact_tel;
        this.address = address;
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
     * @return sign_time
     */
    public Date getSign_time() {
        return sign_time;
    }

    /**
     * 设置
     * @param sign_time
     */
    public void setSign_time(Date sign_time) {
        this.sign_time = sign_time;
    }

    /**
     * 获取
     * @return sign_timeStr
     */
    public String getSign_timeStr() {
        if (sign_time!=null){
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            sign_timeStr=dateFormat.format(sign_time);
        }
        return sign_timeStr;
    }

    /**
     * 设置
     * @param sign_timeStr
     */
    public void setSign_timeStr(String sign_timeStr) {
        this.sign_timeStr = sign_timeStr;
    }

    /**
     * 获取
     * @return contact_name
     */
    public String getContact_name() {
        return contact_name;
    }

    /**
     * 设置
     * @param contact_name
     */
    public void setContact_name(String contact_name) {
        this.contact_name = contact_name;
    }

    /**
     * 获取
     * @return contact_tel
     */
    public String getContact_tel() {
        return contact_tel;
    }

    /**
     * 设置
     * @param contact_tel
     */
    public void setContact_tel(String contact_tel) {
        this.contact_tel = contact_tel;
    }

    /**
     * 获取
     * @return address
     */
    public String getAddress() {
        return address;
    }

    /**
     * 设置
     * @param address
     */
    public void setAddress(String address) {
        this.address = address;
    }

    public String toString() {
        return "Partners{id = " + id + ", name = " + name + ", sign_time = " + sign_time + ", sign_timeStr = " + sign_timeStr + ", contact_name = " + contact_name + ", contact_tel = " + contact_tel + ", address = " + address + "}";
    }
}
