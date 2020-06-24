package com.jb.dao;

import com.jb.bean.Shoppingcart;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CartDao {

    void addCart(Shoppingcart cart) throws Exception;

    List<Shoppingcart> cartListByUserId(String UserId);

    void changeNum(@Param("shoppingcartCount") String shoppingcartCount
            , @Param("shoppingcartId") String shoppingcartId);
}
