package com.jb.Controller;

import com.jb.bean.TbMgr;
import com.jb.service.MgrService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@Controller
public class MangerController {

    @Resource
    MgrService mgrService;

    @ResponseBody
    @RequestMapping("/login.do")
    public Object login(String username, String pwd, HttpSession session) throws Exception {
        TbMgr tbMgr = mgrService.selectMgr(username, pwd);
        boolean flag = true;
        String msg ;
        if (tbMgr!=null){
            session.setAttribute("user",tbMgr);
             flag = true;
             msg = "登录成功";
        }else {
            flag = false;
            msg = "登录失败";
        }
        Map<String ,Object> map = new HashMap<>();
        map.put("flag",flag);
        map.put("msg",msg);
        return map;
    }

    @ResponseBody
    @RequestMapping("/getUserInfo.do")
    public Object getUserInfo(HttpSession session){
        TbMgr user = (TbMgr) session.getAttribute("user");
        Map<String,Object> map = new HashMap<>();
        map.put("username",user.getMagName());
        return map;
    }

    @RequestMapping("/exitUser.do")
    public void exitUser(HttpSession session, HttpServletRequest request, HttpServletResponse response){
        session.removeAttribute("user");
        TbMgr user = (TbMgr) session.getAttribute("user");

        if (user==null){
            try {
                request.getRequestDispatcher("/login.html").forward(request, response);
            } catch (Exception e) {
            }
        }
    }



}
