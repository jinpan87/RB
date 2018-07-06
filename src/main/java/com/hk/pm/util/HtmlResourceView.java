package com.hk.pm.util;

import java.io.File;
import java.util.Locale;

import org.springframework.web.servlet.view.InternalResourceView;

public class HtmlResourceView extends InternalResourceView{
	@Override    
    public boolean checkResource(Locale locale){  
		System.out.println("地址路径："+this.getServletContext().getRealPath("/")+getUrl());
        File file=new File(this.getServletContext().getRealPath("/")+getUrl());  
        return file.exists(); //判断页面是否存在  
    }  
}
