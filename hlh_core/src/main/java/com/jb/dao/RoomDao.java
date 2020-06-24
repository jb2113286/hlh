package com.jb.dao;

import com.jb.bean.Room;

import java.util.List;

public interface RoomDao {
    List<Room> selectRoomListByHotelId(Integer hotelId);
}
