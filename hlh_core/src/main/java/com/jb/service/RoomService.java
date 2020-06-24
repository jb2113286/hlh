package com.jb.service;

import com.jb.bean.Room;

import java.util.List;

public interface RoomService {

    List<Room> selectRoomListByHotelId(Integer hotelId);

}
