package com.jb.dao;

import com.jb.bean.TbMgr;
import org.apache.ibatis.annotations.Param;

public interface MgrDao {
    TbMgr selectMgr(@Param("name") String magName,
                    @Param("pwd") String magPwd) throws Exception;
}
