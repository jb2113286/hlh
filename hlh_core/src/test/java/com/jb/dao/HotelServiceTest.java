package com.jb.dao;

import com.github.pagehelper.PageInfo;
import com.jb.bean.Hotel;
import com.jb.service.HotelService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-service.xml")
public class HotelServiceTest {


    @Resource
    private HotelService hotelService;

    @Resource
    HotelDao hotelDao;

    @Test
    public void selectHotelList() throws Exception {
        List<Hotel> hotelList = hotelService.selectHotelList();
        System.out.println(hotelList);
    }

    @Test
    public void setHotelServicePage() throws Exception {
        PageInfo<Hotel> hotelPageInfo = hotelService.selectHotelListByPage(1, 2);
        List<Hotel> list = hotelPageInfo.getList();
        for (Hotel h :
                list) {
            System.out.println(list);
        }
    }

    @Test
    public void selectHotelById(){
        Hotel hotel = hotelService.selectHotelById(1);
        System.out.println(hotel);
    }

    @Test
    public void listHotels(){
        List<Hotel> hotelList = hotelDao.listHotels(1, 2);
        for (Hotel h :
                hotelList) {
            System.out.println(h);
        }
    }


    @Test
    public void cont(){
        int hotelCount = hotelDao.getHotelCount();
        System.out.println(hotelCount);
    }





}
