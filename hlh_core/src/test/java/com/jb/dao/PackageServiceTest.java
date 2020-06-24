package com.jb.dao;


import com.jb.bean.MyPackage;
import com.jb.service.PackageService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-service.xml")
public class PackageServiceTest {
    @Resource
    PackageService service;

    @Test
    public void test01() throws Exception {
        List<MyPackage> myPackages = service.selectPackageListByHotelId(1);
        for (MyPackage m :
                myPackages) {
            System.out.println(m );
        }
    }

    @Test
    public void test02() throws Exception {
        MyPackage myPackage = service.selectPackageById(1);
        System.out.println(myPackage);

    }

}
