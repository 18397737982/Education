package com.gy.util;

import java.io.UnsupportedEncodingException;

public class UsuallyUtil {
	public String decode(String originalStr){
		 try {
				byte source [] = originalStr.getBytes("iso8859-1");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}//得到客户机提交的原始数据
			 try {
				 originalStr = new String (originalStr.getBytes("iso8859-1"),"UTF-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}//
			return originalStr;
	}
}
