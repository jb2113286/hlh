package com.jb.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jb.bean.Hotel;
import com.jb.dao.HotelDao;
import com.jb.service.HotelService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class HotelServiceImpl implements HotelService {

    @Resource
    private HotelDao hotelDao;

    @Override
    public List<Hotel> selectHotelList() throws Exception {
        return hotelDao.selectHotelList();
    }

    @Override
    public PageInfo<Hotel> selectHotelListByPage(Integer currentPage, Integer pageSize) throws Exception {
        PageHelper.startPage(currentPage,pageSize);
        List<Hotel> hotelList =hotelDao.selectHotelList();

        return new PageInfo<>(hotelList);
    }

    @Override
    public Hotel selectHotelById(Integer hotelId) {

        return hotelDao.selectHotelById(hotelId);
    }

    @Override
    public List<Hotel> listHotels(Integer page, Integer limit) {

        int start = (page-1)*limit;

        return hotelDao.listHotels(start,limit);
    }

    @Override
    public void deleteHotel(Integer hotelId) {
        hotelDao.deleteHotel(hotelId);
    }

    @Override
    public Integer insetInto(Hotel hotel) {
        hotelDao.insetInto(hotel);
        return hotel.getHotelId();
    }

    @Override
    public void updateHotel(Hotel hotel) {
        hotelDao.updateHotel(hotel);
    }

    @Override
    public int getHotelCount() {
        return hotelDao.getHotelCount();
    }
}
