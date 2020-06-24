package com.jb.service;

import com.jb.bean.User;

public interface UserService {

    User selectUserById(Integer userId) throws Exception;

    User login(User inputUser) throws Exception;

    boolean register(User inputUser)throws Exception;

    User selectUserByEmail(String email)throws Exception;

}
