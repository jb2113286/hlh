package com.jb.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Hotel {

    private Integer hotelId;//酒店编号
    private String hotelName;//酒店名称
    private String hotelAddress;//酒店地址
    private String hotelTel;//酒店电话
    private String hotelStar;//酒店推荐指数
    private Img img;



}
