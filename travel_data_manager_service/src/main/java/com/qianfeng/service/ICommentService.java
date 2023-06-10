package com.qianfeng.service;

import com.qianfeng.domain.Comment;
import com.qianfeng.domain.Product;

import java.util.List;

public interface ICommentService {
    List<Comment> findAll(Integer page, Integer pageSize);


    void deleteByIds(Integer[] ids);

    Comment findById(Integer id);

    void add(Comment comment);
}
