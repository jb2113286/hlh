package com.jb.dao;

import com.jb.bean.Img;
import org.apache.ibatis.annotations.Param;

public interface ImgDao {



    void insertIntoImg(Img img);

    void updateHotelId(@Param("imgId") Integer imgId, @Param("hotelId") Integer hotelId);

    void updatePackage(@Param("imgId") Integer imgId, @Param("packageId") Integer packageId);

    Img selectImgByHotelId(Integer hotelId) throws Exception;

    Img selectImgByRoomId(Integer roomId) throws Exception;

    Img selectImgByPackageId(Integer packageId) throws Exception;


}
