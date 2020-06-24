package com.jb.service;

import com.jb.bean.MyPackage;

import java.util.List;

public interface PackageService {

    void deletePackage(Integer packageId);

    Integer insetPackage(MyPackage myPackage);

    void updatePackage(MyPackage myPackage);

    List<MyPackage> selectPackageListByHotelId(Integer hotelId) throws Exception;

    MyPackage selectPackageById(Integer packageId) throws Exception;
}
