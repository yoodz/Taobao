package com.zzuli.home.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zzuli.home.dao.UserDao;
import com.zzuli.home.model.User;

@Service("userService")
public class UserService {

    @Resource
    private UserDao userDao;

    public boolean validate (User user) {
        
        User user2 = userDao.getByUserName(user.getUserName());
        if (user2 == null) {
            return false;
        }
        if (user2.getPassword().equals(user.getPassword())) {
            return true;
        } else {
            return false;
        }
    }
}
