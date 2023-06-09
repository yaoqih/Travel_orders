package com.qianfeng.controller;

import com.github.pagehelper.PageInfo;
import com.qianfeng.domain.Partners;
import com.qianfeng.domain.Product;
import com.qianfeng.domain.UserInfo;
import com.qianfeng.service.IPartnerService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping(value = "/partner")
public class PartnersController {
    @Resource
    private IPartnerService partnerService;

    @RequestMapping("/findAll")
    public ModelAndView findAll(@RequestParam(defaultValue = "1",name = "page") Integer page, @RequestParam(defaultValue = "3",name = "pageSize")Integer pageSize){
        ModelAndView mav = new ModelAndView();
        List<Partners> partnerList= partnerService.findAll(page,pageSize);
        PageInfo<Partners> pageInfo = new PageInfo<>(partnerList);
        mav.addObject("pageInfo",pageInfo);
        mav.setViewName("partner-list");
        return mav;
    }

    @RequestMapping("/save")
    public String save(Partners partners) {
        partnerService.save(partners);
        return "redirect:/partner/findAll";
    }

    @RequestMapping("/findById")
    public ModelAndView findById(String id){
        ModelAndView mav = new ModelAndView();
        Partners partner= partnerService.findById(id);
        mav.addObject("partner",partner);
        mav.setViewName("partner-show");
        return mav;
    }

}
