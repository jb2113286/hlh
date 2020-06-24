package com.jb.Controller;

import com.jb.bean.Img;
import com.jb.bean.MyPackage;
import com.jb.service.ImgService;
import com.jb.service.PackageService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class PackageController {
    @Resource
    PackageService packageService;
    @Resource
    ImgService imgService;



    //删除数据
    @ResponseBody
    @RequestMapping("/deletePackage")
    public Object deletePackage(Integer packageId){

        System.out.println(packageId);
        Map<String,Object> map = new HashMap<>();
        boolean flag = true;
        try {
            flag = true;
            packageService.deletePackage(packageId);
        }catch (Exception e){

            System.err.println(e);
            flag = false;
        }
        map.put("flag",flag);

        return map;
    }

    //添加套餐
    @ResponseBody
    @RequestMapping("/addPackage")
    public Object addPackage(MyPackage myPackage, Integer imgId,HttpSession session){
        Integer hotelId = (Integer) session.getAttribute("hotelId");
        Map<String,Object> map = new HashMap<>();
        boolean flag;
        try {

            myPackage.setHotelHotelId(hotelId);
            Integer packageId = packageService.insetPackage(myPackage);
            imgService.updatePackageId(imgId,packageId);
            flag = true;


        }catch (Exception e){
            System.err.println(e);
            flag = false;
        }
        map.put("flag",flag);
        return map;
    }


    //更新套餐
    @ResponseBody
    @RequestMapping("/updatePackage")
    public Object updatePackage(MyPackage myPackage){
        Map<String,Object> map = new HashMap<>();
        boolean flag;
        try {
            flag = true;
            packageService.updatePackage(myPackage);
        }catch (Exception e){
            flag = false;
            System.err.println(e);
        }

        map.put("flag",flag);
        return map;
    }

    //查看套餐
    @ResponseBody
    @RequestMapping("/packageInfo")
    public Object packageInfo(HttpSession session){
        HashMap<String,Object> map = (HashMap<String, Object>) session.getAttribute("map");
        boolean flag = (boolean) map.get("flag");
        if (flag){
            map.put("code",0);
        }
        return map;
    }
}
