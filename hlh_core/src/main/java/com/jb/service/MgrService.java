package com.jb.service;


import com.jb.bean.TbMgr;
import org.apache.ibatis.annotations.Param;

public interface MgrService {
    TbMgr selectMgr( String magName,
                     String magPwd) throws Exception;
}
