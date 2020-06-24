package com.jb.Controller;

import com.jb.bean.User;
import com.jb.service.UserService;
import com.jb.utils.SendEmail;
import org.springframework.jmx.export.annotation.ManagedResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    private UserService userService;


    @RequestMapping("/selectUserById.do")
    public String selectUserById() throws Exception {
        User user = userService.selectUserById(1);

        System.out.println(user );

        return "index";
    }


    @RequestMapping("/login.do")
    public String Login(User user, Errors errors, String qrCode, HttpSession session, Model model) throws Exception {
        if (errors.hasErrors()){
            return "login";
        }else {
            String code = (String) session.getAttribute("key");
            if (code != null){
                if (qrCode.equals(code)){
                    User existUser = userService.login(user);
                    if (existUser!=null){
                        //登录成功
                        session.setAttribute("exitsUser",existUser);
                        return "index";
                    }else {
                        //登录失败
                        model.addAttribute("errmsg","账号或密码错误");
                        return "login";
                    }
                }else{
                    model.addAttribute("errmsg","验证码错误");
                    return "login";
                }
            }else {
                model.addAttribute("errmsg","请输入验证码");
                return "login";
            }
        }

    }


    @RequestMapping("/register.do")
    public String register(User user,Model model,String emailCode,HttpSession session) throws Exception {
        System.out.println(user);
        String code = (String) session.getAttribute("emailCode");
        System.out.println(code);
        if (code != null){
            if (!code.equals(emailCode)){
                model.addAttribute("errmsg","邮箱验证错误");
                return "register";
            }
        }else {
            model.addAttribute("errmsg","邮箱验证错误");
            return "register";
        }

        //注册账号

        if (user.getUserPassword() != null && user.getUserTel()!=null) {
            try {
                boolean register = userService.register(user);
                if (register) {
                    model.addAttribute("errmsg", "注册成功");
                    return "login";
                } else {
                    model.addAttribute("errmsg", "账号已被占用");
                    return "register";
                }


            } catch (Exception e) {
                System.err.println(e);
                model.addAttribute("errmsg", "未知错误");
                return "register";
            }
        }else {
            model.addAttribute("errmsg", "账号密码不能为空");
            return "login";

        }

    }
}
