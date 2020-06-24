package com.jb;

import com.jb.utils.SendEmail;

import java.util.Random;

public class utilTest {
    public static void main(String[] args) {
        SendEmail sendEmail = new SendEmail();
        //设置要发送的邮箱
        sendEmail.setReceiveMailAccount("1724691369@qq.com");
        //创建10位发验证码
        Random random = new Random();
        String str = "";
        for (int i = 0; i < 10; i++) {
            int n = random.nextInt(10);
            str += n;
        }
        sendEmail.setInfo(str);
        try {
            sendEmail.Send();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
