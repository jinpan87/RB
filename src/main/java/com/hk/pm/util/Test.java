package com.hk.pm.util;

import java.util.ArrayList;
import java.util.List;

public class Test {
	public static void main(String[] args) {
		        
		         Pager<String> pager = new Pager<String>();
		         
		         List<String> content = new ArrayList<String>();
		         content.add("str1");
		         content.add("str2");
		         content.add("str3");
		         content.add("str4");
		         content.add("str5");
		         content.add("str6");
		         content.add("str7");
		         content.add("str8");
		         content.add("str9");
		         content.add("str10");
		         
		         pager.setCurrentPage(2);
		         pager.setPageSize(5);
		         pager.setRecordTotal(62);
		         pager.setContent(content);
		         
		         System.out.println(pager);
		 
	     }
}
