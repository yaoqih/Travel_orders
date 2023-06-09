package com.qianfeng.controller;

import com.github.pagehelper.PageInfo;
import com.qianfeng.domain.Orders;
import com.qianfeng.domain.Product;
import com.qianfeng.service.IOrderService;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/orders")
public class OrderController {

    @Resource
    private IOrderService orderService;

    @RequestMapping("/findAll")
    public ModelAndView findAll(@RequestParam(defaultValue = "1",name = "page") Integer page,@RequestParam(defaultValue = "3",name = "pageSize") Integer pageSize){
        ModelAndView mav = new ModelAndView();
        List<Orders> ordersList=orderService.findAll(page,pageSize);
        PageInfo<Orders> pageInfo =new PageInfo<>(ordersList);
        mav.addObject("pageInfo",pageInfo);
        mav.setViewName("orders-list");
        return mav;
    }

    @RequestMapping("/findById")
    public ModelAndView findById(String id){
        ModelAndView mav = new ModelAndView();
        Orders orders = orderService.findById(id);
        mav.addObject("orders",orders);
        mav.setViewName("orders-show");
        return mav;
    }
}
