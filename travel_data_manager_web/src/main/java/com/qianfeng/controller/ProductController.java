package com.qianfeng.controller;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.qianfeng.domain.Product;
import com.qianfeng.service.IProductService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

/**
 * 产品的表现层
 */
@Controller
@RequestMapping("/product")
public class ProductController {

    @Resource
    private IProductService productService;

    @RequestMapping("/findAll")
    public ModelAndView findAll(@RequestParam(defaultValue = "1",name = "page") Integer page, @RequestParam(defaultValue = "3",name = "pageSize")Integer pageSize){
        ModelAndView mav = new ModelAndView();
        List<Product> productList= productService.findAll(page,pageSize);
        PageInfo<Product> pageInfo = new PageInfo<>(productList);
        mav.addObject("pageInfo",pageInfo);
        mav.setViewName("product-list");
        return mav;
    }

    @RequestMapping("/add")
    public String Add(Product product) {
        productService.add(product);
        return "redirect:/product/findAll";
    }

    @RequestMapping("/findById")
    public ModelAndView findById(String id){
        ModelAndView mav = new ModelAndView();
        Product product= productService.findById(id);
        mav.addObject("product",product);
        mav.setViewName("product-update");
        return mav;
    }

    @RequestMapping("/update")
    public String Update(Product product) {
        productService.update(product);
        return "redirect:/product/findAll";
    }

    @RequestMapping("/deleteByIds")
    public String deleteByIds(String[] ids) {
        productService.deleteByIds(ids);
        return "redirect:/product/findAll";
    }

}
