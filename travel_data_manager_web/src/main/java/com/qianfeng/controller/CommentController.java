package com.qianfeng.controller;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.qianfeng.domain.Comment;
import com.qianfeng.service.ICommentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.sql.Timestamp;
import java.util.List;

/**
 * 产品的表现层
 */
@Controller
@RequestMapping("/comment")
public class CommentController {

    @Resource
    private ICommentService commentService;

    @RequestMapping("/findAll")
    public ModelAndView findAll(@RequestParam(defaultValue = "1",name = "page") Integer page, @RequestParam(defaultValue = "3",name = "pageSize")Integer pageSize){
        ModelAndView mav = new ModelAndView();
        List<Comment> commentList= commentService.findAll(page,pageSize);
        PageInfo<Comment> pageInfo = new PageInfo<>(commentList);
        mav.addObject("pageInfo",pageInfo);
        mav.setViewName("comment-list");
        return mav;
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
    public String Add(String comment, Integer employee_id) {
        Comment comment1 = new Comment();
        System.out.println(comment);
        comment1.setComment(comment);
        comment1.setEmployee_id(employee_id);
        comment1.setCreated_at(new Timestamp(System.currentTimeMillis()));
        commentService.add(comment1);
        return "redirect:/comment/findAll";
    }

    @RequestMapping("/findById")
    public ModelAndView findById(Integer id){
        ModelAndView mav = new ModelAndView();
        Comment comment= commentService.findById(id);
        mav.addObject("comment",comment);
        mav.setViewName("comment-update");
        return mav;
    }

    @RequestMapping("/deleteByIds")
    public String deleteByIds(Integer[] ids) {
        commentService.deleteByIds(ids);
        return "redirect:/comment/findAll";
    }@RequestMapping("/deleteById")
    public String deleteById(Integer id) {
        Integer[] myArray = new Integer[1];
        myArray[0] = id;
        commentService.deleteByIds(myArray);
        return "redirect:/comment/findAll";
    }

}
