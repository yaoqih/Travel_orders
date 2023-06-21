package com.qianfeng.controller;

import com.github.pagehelper.PageInfo;
import com.qianfeng.domain.Employee;
import com.qianfeng.service.IEmployeeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/employee")
public class EmployeeController
{
    @Resource
    private IEmployeeService employeeService;
    // 增
    @RequestMapping("/add")
    public String add(Employee employee)
    {
        employeeService.add(employee);
        return "redirect:/employee/findAll";
    }
    // 删
    @RequestMapping("/deleteByIds")
    public String deleteByIds(String[] ids)
    {
        employeeService.deleteByIds(ids);
        return "redirect:/employee/findAll";
    }
    // 查
    @RequestMapping("/findById")
    public ModelAndView findById(String id)
    {
        ModelAndView mav = new ModelAndView();
        Employee employee = employeeService.findById(id);
        mav.addObject("employee",employee);
        mav.setViewName("employee-update");
        return mav;
    }
    @RequestMapping("/findAll")
    public ModelAndView findAll(@RequestParam(defaultValue = "1",name = "page") Integer page, @RequestParam(defaultValue = "3",name = "pageSize")Integer pageSize) {
        ModelAndView mav = new ModelAndView();
        List<Employee> employeeList = employeeService.findAll(page,pageSize);
        PageInfo<Employee> pageInfo = new PageInfo<>(employeeList);
        mav.addObject("pageInfo",pageInfo);
        mav.setViewName("employee-list");
        return mav;
    }
    // 改
    @RequestMapping("/update")
    public String update(Employee employee)
    {
        employeeService.update(employee);
        return "redirect:/employee/findAll";
    }
}
