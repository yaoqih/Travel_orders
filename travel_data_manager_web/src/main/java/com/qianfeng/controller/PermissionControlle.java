package com.qianfeng.controller;

import com.github.pagehelper.PageInfo;
import com.qianfeng.domain.Permission;
import com.qianfeng.domain.Role;
import com.qianfeng.service.IPermissionService;
import com.qianfeng.service.IRoleService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/permission")
public class PermissionControlle {
    @Resource
    private IPermissionService permissionService;

    @RequestMapping("/findAll")
    public ModelAndView findAll(@RequestParam(defaultValue = "1",name = "page") Integer page, @RequestParam(defaultValue = "3",name = "pageSize") Integer pageSize){
        ModelAndView mav = new ModelAndView();
        List<Permission> permissionList=permissionService.findAll(page,pageSize);
        PageInfo<Permission> pageInfo =new PageInfo<>(permissionList);
        mav.addObject("pageInfo",pageInfo);
        mav.setViewName("permission-list");
        return mav;
    }
    @RequestMapping("/save")
    public String save(Permission permission) {
        permissionService.save(permission);
        return "redirect:/permission/findAll";
    }
}
