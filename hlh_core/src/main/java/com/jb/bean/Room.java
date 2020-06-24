package com.jb.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Room {

  private Integer roomId;
  private String roomName;
  private String roomHeight;
  private String roomMinFee;
  private String roomForm;
  private String roomPillar;
  private String roomDinner;
  private String roomElectricFee;
  private String roomSplit;
  private String roomArea;
  private String roomLamplight;
  private String roomLED;
  private String roomTables;
  private Img img;
  
}
