package com.jb.dao;

import com.jb.bean.Information;
import com.jb.service.InformationService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-service.xml")
public class InformationServiceTest {

    @Resource
    private InformationService informationService;

    @Test
    public void selectInfoById(){
        Information information = informationService.selectInfoByHotelId(1);
        System.out.println(information);
    }
}
