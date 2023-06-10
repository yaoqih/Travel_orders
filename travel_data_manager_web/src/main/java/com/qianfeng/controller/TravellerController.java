package com.qianfeng.controller;

import com.github.pagehelper.PageInfo;
import com.qianfeng.domain.Permission;
import com.qianfeng.domain.Traveller;
import com.qianfeng.domain.UserInfo;
import com.qianfeng.service.ITravellerService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/traveller")
public class TravellerController {
    @Resource
    private ITravellerService travellerService;
    //查询所有游客的积分
    @RequestMapping("/findAllPoints")
    public ModelAndView findAllPoints(@RequestParam(defaultValue = "1",name = "page") Integer page, @RequestParam(defaultValue = "3",name = "pageSize")Integer pageSize){
        ModelAndView mav = new ModelAndView();
        List<Traveller> travellerList= travellerService.findAllPoints(page,pageSize);
        PageInfo<Traveller> pageInfo = new PageInfo<>(travellerList);
        mav.addObject("pageInfo",pageInfo);
        mav.setViewName("traveller-list");
        return mav;
    }

    @RequestMapping("/findById")
    public ModelAndView findById(String id){
        ModelAndView mav = new ModelAndView();
       Traveller traveller =travellerService.findById(id);
        mav.addObject("traveller", traveller);
        mav.setViewName("traveller-show");
        return mav;
    }

    @RequestMapping("/save")
    public String save(Traveller traveller) {
        System.out.println(traveller==null);
        System.out.println(traveller);
        travellerService.save(traveller);
        return "redirect:/traveller/findAllPoints";
    }

}
