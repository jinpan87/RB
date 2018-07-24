package com.hk.pm.util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.apache.commons.lang.StringUtils;

import sun.misc.BASE64Encoder;

public class CodeUtils {
	private static MessageDigest MD5 = null;
	static {
		try {
			MD5 = MessageDigest.getInstance("MD5");
		} catch (NoSuchAlgorithmException ex) {
		}
	}

	public static String encode(String value) {
		String result = "";
		if (value == null) {
			return result;
		}
		BASE64Encoder baseEncoder = new BASE64Encoder();
		try {
			result = baseEncoder.encode(MD5.digest(value.getBytes("utf-8")));
		} catch (Exception ex) {
		}
		return result;
	}

	public static String encodeMD5(String text) {

		try {
			MessageDigest digest = MessageDigest.getInstance("md5");
			byte[] result = digest.digest(text.getBytes());
			StringBuilder sb = new StringBuilder();
			for (byte b : result) {
				int number = b & 0xff;
				String hex = Integer.toHexString(number);
				if (hex.length() == 1) {
					sb.append("0" + hex);
				} else {
					sb.append(hex);
				}
			}
			return sb.toString();
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "";
	}

	

	// 把字符串中的'换成空字符串
	public static String changeWord(String str)
			throws UnsupportedEncodingException {
		if (!StringUtils.isEmpty(str)) {
			str = java.net.URLDecoder.decode(str, "UTF-8");
			if (str.contains("'")) {
				String newStr = str.replaceAll("'", "");
				return newStr;
			}
		}
		return str;
	}
	/**
	 * 单引号乱码转换
	 * @param str
	 * @return
	 * @throws UnsupportedEncodingException
	 */
	public static String replaceWord(String str)
			throws UnsupportedEncodingException {
		if (!StringUtils.isEmpty(str)) {
			str = java.net.URLDecoder.decode(str, "UTF-8");
			if (str.contains("&#39;")) {
				String newStr = str.replaceAll("&#39;", "'");
				if(newStr.contains("&#64;")){
					String str2=newStr.replaceAll("&#64;", "@");
					return str2;
				}
				return newStr;
			}
		}
		return str;
	}

	public static void main(String[] args) {
		String a = "u:admin,p:123456";
		String b = "u:'''12''',p:''''12''";
		System.out.println(encodeMD5(a));
		System.out.println(encode(a));
	}

	

}
