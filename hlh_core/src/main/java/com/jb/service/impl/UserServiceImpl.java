package com.jb.service.impl;

import com.jb.bean.User;
import com.jb.dao.UserDao;
import com.jb.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.awt.print.Book;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserDao userDao;

    @Override
    public User selectUserById(Integer userId) throws Exception {
        return userDao.selectUserById(userId);
    }

    @Override
    public User login(User inputUser) throws Exception {
        return userDao.login(inputUser);
    }

    @Override
    public boolean register(User inputUser) throws Exception {

        User login = userDao.selectUserByEmail(inputUser.getUserTel());
        //判断用户是否存在
        if (login!=null){
            return false;
        }else {
            userDao.register(inputUser);
            return true;
        }
    }

    @Override
    public User selectUserByEmail(String email) throws Exception {

        return userDao.selectUserByEmail(email);
    }

}
