package com.qianfeng.dao;

import com.qianfeng.domain.Comment;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ICommentDao {
    @Select("select * from employee_comments")
    List<Comment> findAll();

    @Insert("insert into employee_comments(comment_id,employee_id,comment,created_at) values(#{comment_id},#{employee_id},#{comment},#{created_at})")
    void add(Comment employeeComments);

    @Select("select * from employee_comments where comment_id=#{comment_id}")
    Comment findById(Integer comment_id);

    @Delete("delete from employee_comments where comment_id=#{comment_id}")
    void deleteById(Integer comment_id);
}
