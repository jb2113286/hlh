package com.jb.dao;

import com.jb.bean.MyPackage;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PackageDao {

    void deletePackage(Integer packageId);

    void insetPackage(MyPackage myPackage);

    void updatePackage(MyPackage myPackage);

    List<MyPackage> selectPackageListByHotelId(Integer hotelId) throws Exception;

    MyPackage selectPackageById(Integer packageId) throws Exception;
}
