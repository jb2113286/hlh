package com.jb.service.impl;

import com.jb.bean.TbMgr;
import com.jb.dao.MgrDao;
import com.jb.service.MgrService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class MgrServiceImpl implements MgrService {
    @Resource
    MgrDao mgrDao;
    @Override
    public TbMgr selectMgr(String magName, String magPwd) throws Exception {
        return mgrDao.selectMgr(magName,magPwd);
    }


}
