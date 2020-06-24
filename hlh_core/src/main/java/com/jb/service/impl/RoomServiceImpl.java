package com.jb.service.impl;

import com.jb.bean.Room;
import com.jb.dao.RoomDao;
import com.jb.service.RoomService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class RoomServiceImpl implements RoomService {
    @Resource
    RoomDao roomDao;
    @Override
    public List<Room> selectRoomListByHotelId(Integer hotelId) {
        List<Room> rooms = roomDao.selectRoomListByHotelId(hotelId);

        return rooms;
    }
}
