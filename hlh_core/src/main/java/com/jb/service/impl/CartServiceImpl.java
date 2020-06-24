package com.jb.service.impl;

import com.jb.bean.Shoppingcart;
import com.jb.dao.CartDao;
import com.jb.service.CartService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CartServiceImpl implements CartService {

    @Resource
    private CartDao cartDao;

    @Override
    public void addCart(Shoppingcart cart) throws Exception {
        cartDao.addCart(cart);
    }

    @Override
    public List<Shoppingcart> cartListByUserId(String UserId) {
        return cartDao.cartListByUserId(UserId);
    }

    @Override
    public void changeNum(String shoppingcartCount, String shoppingcartId) {
        cartDao.changeNum(shoppingcartCount,shoppingcartId);
    }
}
