package com.jb.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MyPackage {

  private Integer packageId;
  private String packageName;
  private Integer packagePrice;
  private String packageContent;
  private Integer packageSales;
  private String packageMenuA;
  private String packageMenuB;
  private Integer hotelHotelId;
  private Img img;


}
