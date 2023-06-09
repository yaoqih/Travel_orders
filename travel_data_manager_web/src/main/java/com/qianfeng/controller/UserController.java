package com.qianfeng.controller;

import com.github.pagehelper.PageInfo;
import com.qianfeng.domain.Product;
import com.qianfeng.domain.Role;
import com.qianfeng.domain.UserInfo;
import com.qianfeng.service.IRoleService;
import com.qianfeng.service.IUserInfoService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Resource
    private IUserInfoService userInfoService;
    @Resource
    private IRoleService roleService;

    @RequestMapping("/findAll")
    public ModelAndView findAll(@RequestParam(defaultValue = "1",name = "page") Integer page, @RequestParam(defaultValue = "3",name = "pageSize") Integer pageSize){
        ModelAndView mav = new ModelAndView();
        List<UserInfo> userList=userInfoService.findAll(page,pageSize);
        PageInfo<UserInfo> pageInfo =new PageInfo<>(userList);
        mav.addObject("pageInfo",pageInfo);
        mav.setViewName("user-list");
        return mav;
    }

    @RequestMapping("/save")
    public String save(UserInfo userInfo) {
        userInfoService.save(userInfo);
        return "redirect:/product/findAll";
    }

    @RequestMapping("/findById")
    public ModelAndView findById(String id){
        ModelAndView mav = new ModelAndView();
        UserInfo userInfo = userInfoService.findById(id);
        mav.addObject("user", userInfo);
        mav.setViewName("user-show");
       return mav;
    }

    @RequestMapping("/findUserByIdAndAllRole")
    public ModelAndView findUserByIdAndAllRole(String id){
        ModelAndView mav = new ModelAndView();
        UserInfo userInfo= userInfoService.findById(id);
        List<Role> roleList = roleService.findUserByIdAndAllRole(id);
        mav.addObject("user",userInfo);
        mav.addObject("roleList",roleList);
        mav.setViewName("user-role-add");
        return mav;
    }

    @RequestMapping("/addRoleToUser")
    public String addRoleToUser(String userId,String[] ids){
       userInfoService.addRoleToUser(userId,ids);
       return  "redirect:/user/findAll";
    }
}
