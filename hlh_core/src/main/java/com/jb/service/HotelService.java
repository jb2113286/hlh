package com.jb.service;

import com.github.pagehelper.PageInfo;
import com.jb.bean.Hotel;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface HotelService {

    List<Hotel> selectHotelList() throws Exception;

    PageInfo<Hotel> selectHotelListByPage(Integer currentPage, Integer pageSize) throws Exception;

    Hotel selectHotelById(Integer hotelId);

    List<Hotel> listHotels(Integer page, Integer limit);

    void deleteHotel( Integer hotelId);

    Integer insetInto(Hotel hotel);

    void updateHotel(Hotel hotel);

    int getHotelCount();
}
