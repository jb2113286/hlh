package com.jb.service;

import com.jb.bean.Information;
import org.springframework.stereotype.Controller;


public interface InformationService {

    Information selectInfoByHotelId(Integer hotelId);
}
