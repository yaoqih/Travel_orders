package com.qianfeng.controller;


import com.github.pagehelper.PageInfo;
import com.qianfeng.domain.Activity;
import com.qianfeng.domain.Role;
import com.qianfeng.service.IActivityService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/activity")
public class ActivityController {


    @Resource
    private IActivityService activityService;

    @RequestMapping("/findAll")
    public ModelAndView findAll(@RequestParam(defaultValue = "1",name = "page") Integer page, @RequestParam(defaultValue = "3",name = "pageSize") Integer pageSize){
        ModelAndView mav = new ModelAndView();
        List<Activity> activityList = activityService.findAll(page,pageSize);
//        System.out.println(activityList);
        System.out.println("54444444444");
        PageInfo<Activity> pageInfo =new PageInfo<>(activityList);
        mav.addObject("pageInfo", pageInfo);
        mav.setViewName("activity-list");
        return mav;
    }

    @RequestMapping("/add")
    public String add(Activity activity)
    {
        activityService.add(activity);
        return "redirect:/activity/findAll";
    }


    @RequestMapping("/findById")
    public ModelAndView findById(String id){
        ModelAndView mav = new ModelAndView();
        Activity activity = activityService.findById(id);
        mav.addObject("activity", activity);
        mav.setViewName("activity-show");
        return mav;
    }
}
