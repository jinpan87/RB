package com.hk.pm.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.springframework.core.io.InputStreamResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.EncodedResource;
import org.springframework.core.io.support.PropertiesLoaderUtils;

public class ReadConfig {
	
	public static String springUtil(String str){  
		Properties props =new Properties();
		String string = "";
            try {  
                props=PropertiesLoaderUtils.loadAllProperties("message.properties");  
                string=props.getProperty(str,"");
            } catch (IOException e) {  
                System.out.println(e.getMessage());  
            }  
              return string;
        }
	public static void main(String[] args) {
		/*System.out.println(springUtil("code"));
		JSONObject json=new JSONObject();
		System.out.println(json.toString());*/
		readByUTF8("XS");
		
	}
	public static String readByUTF8(String str){  
        Properties properties = new Properties();  
        InputStream is = ReadConfig.class.getResourceAsStream("/message.properties");  
        Resource[] resources = new Resource[]{new InputStreamResource(is)};  
        try {  
            for (Resource resource : resources) {  
                PropertiesLoaderUtils.fillProperties(properties, new EncodedResource(resource, "UTF-8"));  
            }  
        } catch (IOException e) {  
            e.printStackTrace();  
        }  
        return properties.get(str)+"";
  
    }  
}
