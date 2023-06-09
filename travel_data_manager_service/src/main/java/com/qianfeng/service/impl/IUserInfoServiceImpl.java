package com.qianfeng.service.impl;

import com.github.pagehelper.PageHelper;
import com.qianfeng.dao.IUserInfoDao;
import com.qianfeng.domain.UserInfo;
import com.qianfeng.service.IUserInfoService;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import com.qianfeng.domain.Role;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;

@Service(value = "userService")
public class IUserInfoServiceImpl implements IUserInfoService {
    @Resource
    private IUserInfoDao userInfoDao;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserInfo userInfo= userInfoDao.findByUserName(username);
        if (userInfo==null){
            return null;
        }
        User user = new User(userInfo.getUsername(),userInfo.getPassword(), userInfo.getStatus() == 1,true,true,true,getGrantedAuthority(userInfo.getRoles()));
        return user;
    }

    private Collection<? extends GrantedAuthority> getGrantedAuthority(List<Role> roles) {
        //查询用户赋予权限
        ArrayList<SimpleGrantedAuthority> list = new ArrayList<SimpleGrantedAuthority>();
        for (Role role:roles
             ) {
            list.add(new SimpleGrantedAuthority("ROLE_"+role.getRoleName()));
        }

        return list;
    }

    @Override
    public List<UserInfo> findAll(Integer page, Integer pageSize) {
        //只能写在第一行
        PageHelper.startPage(page,pageSize);//框架自动在sql上配置limit关键字
        return userInfoDao.findAll();
    }
    @Resource
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public void save(UserInfo userInfo) {
        userInfo.setId(UUID.randomUUID().toString());
        userInfo.setStatus(1);
        userInfo.setPassword(bCryptPasswordEncoder.encode(userInfo.getPassword()));
        userInfoDao.save(userInfo);
    }

    @Override
    public UserInfo findById(String userid) {
        return userInfoDao.findById(userid);
    }

    @Override
    public void addRoleToUser(String userid, String[] ids) {
        for (String roleId:ids
             ) {
            userInfoDao.addRoleToUser(userid,roleId);
        }
    }
}
