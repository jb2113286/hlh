package com.jb.dao;

import com.jb.bean.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {


    User selectUserById(Integer userId) throws Exception;

    User login(User inputUser) throws Exception;

    void register(User inputUser) throws Exception;

    User selectUserByEmail(@Param("Email") String Email) throws Exception;

}
