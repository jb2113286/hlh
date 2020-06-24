package com.jb.dao;


import com.jb.bean.Hotel;
import org.apache.ibatis.annotations.Param;

import java.net.HttpCookie;
import java.util.List;

public interface HotelDao {

    List<Hotel> selectHotelList() throws Exception;

    Hotel selectHotelById(Integer hotelId);

    void insetInto(Hotel hotel);

    void deleteHotel(@Param("hotelId") Integer hotelId);

    List<Hotel> listHotels(@Param("start") Integer start, @Param("limit") Integer limit);

    int getHotelCount();

    void updateHotel(Hotel hotel);



}