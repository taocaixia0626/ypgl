package com.util;
/**
 * 验证码生成类
 */
import java.util.Random;//随机生成数

public class CheckCode {

	public String getCheckCode(){
		Random random = new Random();
		String sRand="";
		for (int i=0;i<4;i++){
	    String rand=String.valueOf(random.nextInt(10));
	    sRand+=rand;
		}
	    return sRand;
	}
}
