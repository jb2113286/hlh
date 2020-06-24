package com.jb.service.impl;

import com.jb.bean.Information;
import com.jb.dao.InformationDao;
import com.jb.service.InformationService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
@Service
public class InformationServiceImpl implements InformationService {

    @Resource
    private InformationDao informationDao;


    @Override
    public Information selectInfoByHotelId(Integer hotelId) {
        Information information = informationDao.selectInfoById(hotelId);
        return information;
    }
}
