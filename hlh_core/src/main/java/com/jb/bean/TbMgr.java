package com.jb.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class TbMgr {

  private long magId;
  private String magName;
  private String magPwd;


  public long getMagId() {
    return magId;
  }

  public void setMagId(long magId) {
    this.magId = magId;
  }


  public String getMagName() {
    return magName;
  }

  public void setMagName(String magName) {
    this.magName = magName;
  }


  public String getMagPwd() {
    return magPwd;
  }

  public void setMagPwd(String magPwd) {
    this.magPwd = magPwd;
  }

}
