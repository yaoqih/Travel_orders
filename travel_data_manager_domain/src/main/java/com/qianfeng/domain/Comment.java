package com.qianfeng.domain;

import java.sql.Timestamp;

public class Comment {
    private int comment_id;
    private int employee_id;
    private String comment;
    private java.sql.Timestamp created_at;

    public int getComment_id() {
        return comment_id;
    }

    public void setComment_id(int comment_id) {
        this.comment_id = comment_id;
    }

    public int getEmployee_id() {
        return employee_id;
    }

    public void setEmployee_id(int employee_id) {
        this.employee_id = employee_id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Timestamp getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Timestamp created_at) {
        this.created_at = created_at;
    }

    public Comment(int commentId, int employeeId, String comment, Timestamp createdAt) {
        this.comment_id = commentId;
        this.employee_id = employeeId;
        this.comment = comment;
        this.created_at = createdAt;
    }

    public Comment() {
    }
}
