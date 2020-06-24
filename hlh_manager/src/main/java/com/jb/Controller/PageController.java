package com.jb.Controller;

import com.jb.bean.MyPackage;
import com.jb.bean.TbMgr;
import com.jb.service.HotelService;
import com.jb.service.PackageService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import sun.plugin2.os.windows.SECURITY_ATTRIBUTES;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class PageController {


    @Resource
    PackageService packageService;

    @RequestMapping("/login.html")
    public String toLogin(){
        return "login";
    }

    @RequestMapping("/index.html")
    public String toIndex(HttpSession session){
        TbMgr user = (TbMgr) session.getAttribute("user");

        return "index";
    }

    @RequestMapping("/hotelList.html")
    public String toHotelList(){
        return "hotelList";
    }

    @RequestMapping("/addHotel.html")
    public String toAddHotel(){
        return "addHotel";
    }

    @RequestMapping("/addPackage.html")
    public String toaPackage(){
        return "addPackage";
    }

    @RequestMapping("/PackageList.html")
    public String toPackageList(Integer hotelId,HttpSession session) throws Exception {
        session.removeAttribute("map");
        session.removeAttribute("hotelId");
        Map<String,Object> map = new HashMap<>();
        boolean flag = true;
        try {
            List<MyPackage> myPackages = packageService.selectPackageListByHotelId(hotelId);

//            for (MyPackage m :
//                    myPackages) {
//                m.setHotelHotelId(hotelId);
//            }
            System.out.println(myPackages);
            map.put("data",myPackages);
            flag = true;
        }catch (Exception e){
            System.out.println(e);
            flag = false;
        }
        map.put("flag",flag);
        session.setAttribute("hotelId",hotelId);
        session.setAttribute("map",map);
        return "PackageList";
    }
}