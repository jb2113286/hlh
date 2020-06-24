package com.jb.service.impl;

import com.jb.bean.Img;
import com.jb.dao.ImgDao;
import com.jb.service.ImgService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ImgServiceImpl implements ImgService {

    @Resource
    ImgDao imgDao;

    @Override
    public Integer insertIntoImg(Img img) {
        imgDao.insertIntoImg(img);

        return img.getImgId();
    }

    @Override
    public void updatePackageId(Integer imgId, Integer packageId) {
        imgDao.updatePackage(imgId,packageId);
    }

    @Override
    public void updateHotelId(Integer imgId, Integer hotelId) {
        imgDao.updateHotelId(imgId,hotelId);
    }
}
