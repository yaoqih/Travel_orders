package com.qianfeng.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.qianfeng.dao.IProductDao;
import com.qianfeng.domain.Product;
import com.qianfeng.service.IProductService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.UUID;

@Service
public class ProductServiceImpl implements IProductService {
    @Resource
    private IProductDao productDao;

    @Override
    public List<Product> findAll(Integer page, Integer pageSize) {
        PageHelper.startPage(page,pageSize);
        return productDao.findAll();
    }

    @Override
    public void deleteByIds(String[] ids) {
        for (String id : ids) {
            productDao.deleteById(id);
        }
    }

    @Override
    public Product findById(String id) {

        return productDao.findById(id);
    }

    @Override
    public void add(Product product) {
        String id = UUID.randomUUID().toString();
        product.setId(id);
        productDao.add(product);
    }

    @Override
    public void update(Product product) {
          productDao.update(product);
    }
}
