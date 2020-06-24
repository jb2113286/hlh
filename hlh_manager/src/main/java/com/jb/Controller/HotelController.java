package com.jb.Controller;

import com.jb.bean.Hotel;
import com.jb.bean.Img;
import com.jb.service.HotelService;
import com.jb.service.ImgService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import sun.rmi.server.InactiveGroupException;

import javax.annotation.Resource;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class HotelController {

    @Resource
    HotelService hotelService;

    @Resource
    ImgService imgService;


    @ResponseBody
    @RequestMapping("/hotelList")
    public Object hotelList(Integer page,Integer limit){
        List<Hotel> hotelList = hotelService.listHotels(page, limit);
        System.out.println(hotelList);
        int count = hotelService.getHotelCount();
        int code = 1;
        if (hotelList != null){
            code = 0;
        }else {
            code = 1;
        }
        Map<String,Object> map = new HashMap<>();
        map.put("count",count);
        map.put("code",code);
        map.put("data",hotelList);
        return map;
    }


    @ResponseBody
    @RequestMapping("/addHotel")
    public Object addHotel(Hotel hotel,Integer imgId){
        boolean flag = true;
        String msg;
        System.out.println(hotel);
        try {
            Integer hotelId = hotelService.insetInto(hotel);
            imgService.updateHotelId(imgId,hotelId);
            msg = "添加成功";
        }catch (Exception e){
            System.err.println(e);
            flag = false;
            msg = "添加失败";
        }

        Map<String,Object> map = new HashMap<>();

        map.put("flag",flag);
        map.put("msg",msg);
        return map;
    }


    @ResponseBody
    @RequestMapping("/deleteHotel")
    public Object deleteHotel(Integer hotelId){
        boolean flag = true;
        System.out.println(hotelId);
        try {
            hotelService.deleteHotel(hotelId);
        }catch (Exception e){
            System.err.println(e);
            flag = false;
        }
        Map<String,Object> map = new HashMap<>();
        map.put("flag",flag);
        return map;
    }


    @ResponseBody
    @RequestMapping("updateHotel")
    public Object updateHotel(Hotel hotel){
        boolean flag = true;
        System.out.println(hotel);
        try {
            flag = true;
            hotelService.updateHotel(hotel);
        }catch (Exception e){
            flag = false;
            System.err.println(e);

        }
        Map<String,Object> map = new HashMap<>();

        map.put("flag",flag);

        return map;
    }



    @ResponseBody
    @RequestMapping("/upload")
    public Object upload(MultipartFile file) {

        Map<String,Object> map = new HashMap<>();

        String suffix = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));

        String fileName = System.currentTimeMillis() + suffix;
        System.out.println(fileName);
        String dir = "D:\\server\\imgs\\img\\";
        try {
            file.transferTo(new File(dir+fileName));
            String path = "http://127.0.0.1:12020/img/"+fileName;
            Img img = new Img();
            img.setImgAdd(path);
            Integer imdId = imgService.insertIntoImg(img);
            map.put("img",img);
            map.put("Code",1);
        }catch (Exception e){
            map.put("Code",0);
            System.err.println(e);
        }
//        MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
        return map;
    }


}
