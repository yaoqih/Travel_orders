package com.qianfeng.controller;


import com.github.pagehelper.PageInfo;
import com.qianfeng.domain.Present;
import com.qianfeng.service.IPresentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/present")
public class PresentController {

    @Resource
    private IPresentService presentService;

    @RequestMapping("/findAll")
    public ModelAndView findAll(@RequestParam(defaultValue = "1",name = "page") Integer page, @RequestParam(defaultValue = "3",name = "pageSize") Integer pageSize){
        ModelAndView mav = new ModelAndView();
        List<Present> presentList = presentService.findAll(page,pageSize);
        PageInfo<Present> pageInfo= new PageInfo<>(presentList);
        mav.addObject("pageInfo", pageInfo);
        mav.setViewName("present-list");
        return mav;
    }

    @RequestMapping("/add")
    public String add(Present present){
        presentService.add(present);
        return "redirect:/present/findAll";
    }

    @RequestMapping("/findById")
    public ModelAndView findById(String id){
        ModelAndView mav = new ModelAndView();
        Present present = presentService.findById(id);
        mav.addObject("present", present);
        mav.setViewName("present-show");
        return mav;
    }
}
