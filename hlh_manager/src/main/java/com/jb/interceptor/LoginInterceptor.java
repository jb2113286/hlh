package com.jb.interceptor;

import com.jb.bean.TbMgr;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String url = request.getRequestURI();
        if (url.indexOf("/login.html") >= 0 || url.indexOf("/js/")>=0 || url.indexOf("/layui/")>=0 || url.indexOf("login.do")>=0) {
            return true;
        }
        HttpSession session = request.getSession();
        TbMgr user = (TbMgr) session.getAttribute("user");
        System.out.println(user);
        if (user!=null){
            return true;
        }

        request.getRequestDispatcher("/login.html").forward(request, response);
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
