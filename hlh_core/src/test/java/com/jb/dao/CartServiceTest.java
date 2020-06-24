package com.jb.dao;

import com.jb.bean.Shoppingcart;
import com.jb.service.CartService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-service.xml")
public class CartServiceTest {
    @Resource
    private CartService cartService;

    @Test
    public void insetInto() throws Exception {
        cartService.addCart(new Shoppingcart("1",
                "1",
                "1",
                "1",
                "1",
                "1",
                "1",
                "1",
                "1",
                "1"));
    }

    @Test
    public void selectCartByUserId(){
        System.out.println(cartService.cartListByUserId("1"));
    }
}
