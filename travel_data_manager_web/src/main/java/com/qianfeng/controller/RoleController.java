package com.qianfeng.controller;

import com.github.pagehelper.PageInfo;
import com.qianfeng.domain.*;
import com.qianfeng.service.IOrderService;
import com.qianfeng.service.IPermissionService;
import com.qianfeng.service.IRoleService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/role")
public class RoleController {
    @Resource
    private IRoleService roleService;

    @Resource
    private IPermissionService permissionService;

    @RequestMapping("/findAll")
    public ModelAndView findAll(@RequestParam(defaultValue = "1",name = "page") Integer page, @RequestParam(defaultValue = "3",name = "pageSize") Integer pageSize){
        ModelAndView mav = new ModelAndView();
        List<Role> roleList=roleService.findAll(page,pageSize);
        PageInfo<Role> pageInfo =new PageInfo<>(roleList);
        mav.addObject("pageInfo",pageInfo);
        mav.setViewName("role-list");
        return mav;
    }

    @RequestMapping("/save")
    public String save(Role role) {
        roleService.save(role);
        return "redirect:/role/findAll";
    }

    @RequestMapping("/findRoleByIdAndAllPermission")
    public ModelAndView findRoleByIdAndAllPermission(String id){
        ModelAndView mav = new ModelAndView();
        List<Permission> permissionList=permissionService.findRoleByIdAndAllPermission(id);
        Role role = roleService.findById(id);
        System.out.println(permissionList);
        mav.addObject("role",role);
        mav.addObject("permissionList",permissionList);
        mav.setViewName("role-permission-add");
        return mav;
    }

    @RequestMapping("/addRoleToPermission")
    public String addRoleToPermission(String roleId,String[] ids){
        roleService.addRoleToPermission(roleId,ids);
        return  "redirect:/role/findAll";
    }


}
