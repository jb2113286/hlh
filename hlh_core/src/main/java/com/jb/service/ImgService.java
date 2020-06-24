package com.jb.service;

import com.jb.bean.Img;

public interface ImgService {

    Integer insertIntoImg(Img img);

    void updatePackageId(Integer imgId,Integer packageId);

    void updateHotelId(Integer imgId, Integer hotelId);

}
