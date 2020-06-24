package com.jb.service.impl;

import com.jb.bean.MyPackage;
import com.jb.dao.PackageDao;
import com.jb.service.PackageService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class PackageServiceImpl implements PackageService {
    @Resource
    PackageDao packageDao;

    @Override
    public void deletePackage(Integer packageId) {
        packageDao.deletePackage(packageId);
    }

    @Override
    public Integer insetPackage(MyPackage myPackage) {
        packageDao.insetPackage(myPackage);
        return myPackage.getPackageId();
    }

    @Override
    public void updatePackage(MyPackage myPackage) {
        packageDao.updatePackage(myPackage);
    }

    @Override
    public List<MyPackage> selectPackageListByHotelId(Integer hotelId) throws Exception {
        List<MyPackage> myPackages = packageDao.selectPackageListByHotelId(hotelId);
        return myPackages;


    }

    @Override
    public MyPackage selectPackageById(Integer packageId) throws Exception {
        MyPackage myPackage = packageDao.selectPackageById(packageId);
        return myPackage;
    }
}
