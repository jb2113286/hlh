package com.jb.service;

import com.jb.bean.Shoppingcart;
import com.jb.bean.Shoppingcart;

import java.util.List;

public interface CartService {
    void addCart(Shoppingcart cart) throws Exception;

    List<Shoppingcart>  cartListByUserId(String UserId);

    void changeNum(String shoppingcartCount,String shoppingcartId);
}
