package com.qianfeng.domain;

import java.text.SimpleDateFormat;
import java.util.Date;

public class SysLog {
    private String id;
    private Date visitTime;
    private String visitTimeStr;
    private String username;
    private String ip;
    private String url;
    private int executionTime;
    private String method;


    public SysLog() {
    }

    public SysLog(String id, Date visitTime, String visitTimeStr, String username, String ip, String url, int executionTime, String method) {
        this.id = id;
        this.visitTime = visitTime;
        this.visitTimeStr = visitTimeStr;
        this.username = username;
        this.ip = ip;
        this.url = url;
        this.executionTime = executionTime;
        this.method = method;
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
     * @return visitTime
     */
    public Date getVisitTime() {
        return visitTime;
    }

    /**
     * 设置
     * @param visitTime
     */
    public void setVisitTime(Date visitTime) {
        this.visitTime = visitTime;
    }

    /**
     * 获取
     * @return visitTimeStr
     */
    public String getVisitTimeStr() {
        if (visitTime!=null){
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            visitTimeStr=dateFormat.format(visitTime);
        }
        return visitTimeStr;
    }

    /**
     * 设置
     * @param visitTimeStr
     */
    public void setVisitTimeStr(String visitTimeStr) {
        this.visitTimeStr = visitTimeStr;
    }

    /**
     * 获取
     * @return username
     */
    public String getUsername() {
        return username;
    }

    /**
     * 设置
     * @param username
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * 获取
     * @return ip
     */
    public String getIp() {
        return ip;
    }

    /**
     * 设置
     * @param ip
     */
    public void setIp(String ip) {
        this.ip = ip;
    }

    /**
     * 获取
     * @return url
     */
    public String getUrl() {
        return url;
    }

    /**
     * 设置
     * @param url
     */
    public void setUrl(String url) {
        this.url = url;
    }

    /**
     * 获取
     * @return executionTime
     */
    public int getExecutionTime() {
        return executionTime;
    }

    /**
     * 设置
     * @param executionTime
     */
    public void setExecutionTime(int executionTime) {
        this.executionTime = executionTime;
    }

    /**
     * 获取
     * @return method
     */
    public String getMethod() {
        return method;
    }

    /**
     * 设置
     * @param method
     */
    public void setMethod(String method) {
        this.method = method;
    }

    public String toString() {
        return "SysLog{id = " + id + ", visitTime = " + visitTime + ", visitTimeStr = " + visitTimeStr + ", username = " + username + ", ip = " + ip + ", url = " + url + ", executionTime = " + executionTime + ", method = " + method + "}";
    }
}
