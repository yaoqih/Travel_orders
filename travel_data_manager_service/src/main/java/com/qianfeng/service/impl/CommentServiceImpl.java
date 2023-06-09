package com.qianfeng.service.impl;

import com.github.pagehelper.PageHelper;
import com.qianfeng.dao.ICommentDao;
import com.qianfeng.dao.IProductDao;
import com.qianfeng.domain.Comment;
import com.qianfeng.domain.Product;
import com.qianfeng.service.ICommentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.UUID;
@Service
public class CommentServiceImpl implements ICommentService {
    @Resource
    private ICommentDao commentDao;

    @Override
    public List<Comment> findAll(Integer page, Integer pageSize) {
        PageHelper.startPage(page,pageSize);
        return commentDao.findAll();
    }

    @Override
    public void deleteByIds(Integer[] ids) {
        for (Integer id : ids) {
            commentDao.deleteById(id);
        }
    }

    @Override
    public Comment findById(Integer id) {

        return commentDao.findById(id);
    }

    @Override
    public void add(Comment comment) {
//        String id = UUID.randomUUID().toString();
//        comment.setId(id);
        commentDao.add(comment);
    }


}
