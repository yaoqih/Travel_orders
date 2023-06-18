package com.qianfeng.domain;

import org.springframework.format.annotation.DateTimeFormat;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Activity {
    private String id;
    private String activityName;

    private String activityDesc;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date startDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date endDate;
    private int status;
    private String statusStr;

    private String startDateStr;
    private String endDateStr;

    public Activity() {
    }

    public Activity(String id, String activityName, String activityDesc, Date startDate, Date endDate, int status, String statusStr, String startDateStr, String endDateStr) {
        this.id = id;
        this.activityName = activityName;
        this.activityDesc = activityDesc;
        this.startDate = startDate;
        this.endDate = endDate;
        this.status = status;
        this.statusStr = statusStr;
        this.startDateStr = startDateStr;
        this.endDateStr = endDateStr;
    }

    public String getStartDateStr() {
        if (startDate !=null){
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            startDateStr=dateFormat.format(startDate);
        }

        return startDateStr;
    }

    public void setStartDateStr(String startDateStr) {
        this.startDateStr = startDateStr;
    }

    public String getEndDateStr() {
        if (endDate !=null){
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            endDateStr=dateFormat.format(endDate);
        }
        return endDateStr;
    }

    public void setEndDateStr(String endDateStr) {
        this.endDateStr = endDateStr;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getActivityName() {
        return activityName;
    }

    public void setActivityName(String activityName) {
        this.activityName = activityName;
    }

    public String getActivityDesc() {
        return activityDesc;
    }

    public void setActivityDesc(String activityDesc) {
        this.activityDesc = activityDesc;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getStatusStr() {
        if (getStatus() == 1){
            statusStr = "开启";
        }
        if (getStatus() == 0){
            statusStr = "关闭";
        }
        return statusStr;
    }

    public void setStatusStr(String statusStr) {
        this.statusStr = statusStr;
    }

    @Override
    public String toString() {
        return "Activity{" +
                "id='" + id + '\'' +
                ", activityName='" + activityName + '\'' +
                ", activityDesc='" + activityDesc + '\'' +
                ", startDate=" + startDate +
                ", endDate=" + endDate +
                ", status=" + status +
                ", statusStr='" + statusStr + '\'' +
                '}';
    }
}
