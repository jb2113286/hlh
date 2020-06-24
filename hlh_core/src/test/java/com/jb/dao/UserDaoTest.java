package com.jb.dao;

import com.jb.bean.User;
import com.jb.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-dao.xml")
public class UserDaoTest {


    @Resource
    private UserDao userDao;

    @Test
    public void selectUserById() throws Exception {
        User user = userDao.selectUserById(1);
        System.out.println(user);
    }

    @Test
    public void login() throws Exception {
        User user  =  new User();
        user.setUserTel("13260621887");
        user.setUserPassword("0o000o");
        System.out.println( userDao.login(user));

    }

    @Test
    public void register() throws Exception {
        User user = new User();
        user.setUserTel("1111");
        user.setUserPassword("111");
        userDao.register(user);
    }


}
