package com.jb.dao;

import com.jb.bean.Room;
import com.jb.service.RoomService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-service.xml")

public class RoomServiceTest {
    @Resource
    RoomService roomService;

    @Test
    public void selectRoomListByHotelId(){
        List<Room> rooms = roomService.selectRoomListByHotelId(1);
        for (Room r :
                rooms) {
            System.out.println(r);
        }

    }
}
