package com.jb.dao;

import com.jb.bean.TbMgr;
import com.jb.service.MgrService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-service.xml")
public class MgrServiceTest {
    @Resource
    MgrService mgrService;

    @Test
    public void selectUser() throws Exception {
        TbMgr tbMgr = mgrService.selectMgr("root", "root");
        System.out.println(tbMgr);
    }
}
