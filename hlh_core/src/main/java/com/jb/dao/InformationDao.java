package com.jb.dao;

import com.jb.bean.Information;

public interface InformationDao {
    Information selectInfoById(Integer HotelId);
}
