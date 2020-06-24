package com.jb.Controller;

import com.github.pagehelper.PageInfo;
import com.jb.bean.*;
import com.jb.service.*;
import com.jb.utils.SendEmail;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

@Controller
public class CenterController {


    @Resource
    private HotelService hotelService;
    @Resource
    private InformationService informationService;
    @Resource
    private RoomService roomService;
    @Resource
    private PackageService packageService;
    @Resource
    private CartService cartService;

    //登录页面
    @RequestMapping("/toLogin.do")
    public String toLogin(){
        return "login";
    }
    //验证码页面
    @RequestMapping("/createCode.do")
    public String createCode(){

        return "validatecode";

    }

    //注册页面
    @RequestMapping("/toRegister.do")
    public String toRegister(){
        return "register";
    }

    //婚宴场地
    @RequestMapping("/toHotelList.do")
    public String toHotelList(Model model, @RequestParam(defaultValue = "1") Integer currentPage,@RequestParam(defaultValue = "2")  Integer pageSize) throws Exception {

        PageInfo<Hotel> pageInfo = hotelService.selectHotelListByPage(currentPage, pageSize);

        model.addAttribute("pageInfo",pageInfo);
        return "hotelList";
    }

    @RequestMapping("/toHotelDetails.do")
    public String toHotelDetails(Integer hotelId,Model model) throws Exception {
        //酒店信息
        Hotel hotelInfo = hotelService.selectHotelById(hotelId);
        //返回酒店信息
        model.addAttribute("hotelInfo",hotelInfo);
        //返回场地信息
        Information information = informationService.selectInfoByHotelId(hotelId);
        model.addAttribute("information",information);
        //返回房间信息
        List<Room> rooms = roomService.selectRoomListByHotelId(hotelId);
        model.addAttribute("rooms",rooms);
        //返回套餐信息
        List<MyPackage> myPackages = packageService.selectPackageListByHotelId(hotelId);
        model.addAttribute("myPackages",myPackages);
        for (MyPackage m :
                myPackages) {
            System.out.println(m.getImg().getImgAdd());
        }

        return "hotelDetails";
    }

    @RequestMapping("/getPackInfoById.do")
    public String getPackInfoById(Integer packageId,Integer hotelId,Model model) throws Exception {
        //返回酒店信息
        Hotel hotel = hotelService.selectHotelById(hotelId);
        model.addAttribute("hotel",hotel);
        //返回套餐信息
        MyPackage myPackage = packageService.selectPackageById(packageId);
        System.out.println(myPackage);
        model.addAttribute("myPackage",myPackage);
        //返回房间信息
        List<Room> rooms = roomService.selectRoomListByHotelId(hotelId);
        model.addAttribute("rooms",rooms);
        return "packageDetails";
    }

    @ResponseBody
    @RequestMapping("/addShippingCart.do")
    public Object addShippingCart(Shoppingcart shoppingcart) throws Exception {

        boolean flag = true;
        String msg = "添加成功";
        try {
            cartService.addCart(shoppingcart);
            flag = true;
            msg = "添加成功";
        }catch (Exception e){
            e.printStackTrace();
            flag = false;
            msg = "添加失败";
        }
        Map<String,Object> map = new HashMap<>();
        map.put("flag",flag);
        map.put("msg",msg);
        return map;
    }

    @ResponseBody
    @RequestMapping("/changeNum.do")
    public Object changeNum(String shoppingcartId,String count){


        boolean flag = true;
        String msg = "添加成功";
        try {
            cartService.changeNum(count,shoppingcartId);
            flag = true;
            msg = "成功";
        }catch (Exception e){
            e.printStackTrace();
            flag = false;
            msg = "失败";
        }

        Map<String,Object> map = new HashMap<>();
        map.put("flag",flag);
        map.put("msg",msg);
        return map;
    }


    @RequestMapping("toShoppingCart.do")
    public String toShoppingCart(HttpSession session,Model model){
        User user = (User) session.getAttribute("exitsUser");
        if (user == null){
            return "login";
        }
        List<Shoppingcart> shoppingcarts = cartService.cartListByUserId(user.getUserTel());
        model.addAttribute("shoppingcarts",shoppingcarts);
        return "shoppingCart";
    }


    //邮箱验证
    @ResponseBody
    @RequestMapping("/sendEmail")
    public Object sendEmail(String email,HttpSession session){
        System.out.println(email);

        boolean flag = true;
        SendEmail sendEmail = new SendEmail();
        //设置要发送的邮箱
        sendEmail.setReceiveMailAccount(email);
        //创建10位发验证码
        Random random = new Random();
        String str = "";
        for (int i = 0; i < 4; i++) {
            int n = random.nextInt(10);
            str += n;
        }

        session.setAttribute("emailCode",str);
        sendEmail.setInfo(str);
        try {
            sendEmail.Send();
            flag = true;
        } catch (Exception e) {
            e.printStackTrace();
            flag = false;
        }

        Map<String,Object> map = new HashMap<>();

        map.put("flag",flag);

        return flag;
    }
}
