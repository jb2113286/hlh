package com.jb.dao;

import com.jb.bean.User;
import com.jb.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-service.xml")
public class UserServiceTest {


    @Resource
    private UserService userService;

    @Test
    public void selectUserById() throws Exception {
        User user = userService.selectUserById(1);
        System.out.println(user);
    }

    @Test
    public void login() throws Exception {
        User user = new User();
        user.setUserTel("13260621887");
        user.setUserPassword("123456");
        User existUser = userService.login(user);
        System.out.println(existUser);
    }



}
