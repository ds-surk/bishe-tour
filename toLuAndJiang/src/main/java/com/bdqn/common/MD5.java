package com.bdqn.common;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5 {
	public static String getMd5(String plainText,int length) {
		try {
			MessageDigest md=MessageDigest.getInstance("MD5");
			md.update(plainText.getBytes());
			byte b[]=md.digest();
			
			
			int i;
			StringBuffer buf=new StringBuffer("");
			for(int offset=0;offset<b.length;offset++) {
				i=b[offset];
				if(i<0) {
					i+=256;
				}if(i<16)
					buf.append("0");
				buf.append(Integer.toHexString(i));
				//32ä½?
				//return buf.toString()
				//16ä½?
				//return buf.toString().substring(0,16)
				return buf.toString().substring(0,length);
				
			}
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		return plainText;		
	}
}