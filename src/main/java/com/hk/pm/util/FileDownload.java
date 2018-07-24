package com.hk.pm.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FileDownload {

	@RequestMapping("/filedownload/queryFileDownload.do")
	public void queryFileDownload(String tableName, HttpServletResponse response){
        try {
        	
        	tableName = CodeUtils.changeWord(tableName) + ".xls";         	
        	
            File file = new File(ReadConfig.springUtil("address")+tableName);  
            String fileName = tableName.substring(tableName.lastIndexOf(File.separator)+1);  
            fileName = new String(fileName.getBytes("UTF-8"),"ISO8859-1");  
            response.setContentType("application/octet-stream");  
            response.addHeader("Content-Disposition", "attachment;filename="+fileName);  
            String len = String.valueOf(file.length());  
            response.setHeader("Content-Length", len);  
            OutputStream out = response.getOutputStream();  
            FileInputStream in = new FileInputStream(file);  
            byte[] b = new byte[1024];  
            int n;  
            while((n=in.read(b))!=-1){  
                out.write(b, 0, n);  
            }  
            in.close();  
            out.close();  
        } catch (FileNotFoundException e) {  
            e.printStackTrace();  
        } catch (IOException e) {  
            e.printStackTrace();  
        }  
	}
	/*@RequestMapping("/filedownload/queryFileDownloadDB.jhtml")
	public void queryFileDownloadDB(String fileName, HttpServletResponse response){
		try {
			String path=StaticMethod.getDBAddress()+"\\"+fileName;
			System.out.println("文件地址："+path);
			File file = new File(path);
//			String fileName = path.substring(path.lastIndexOf(File.separator)+1);  
			fileName = new String(fileName.getBytes("UTF-8"),"ISO8859-1");  
			response.setContentType("application/octet-stream");  
			response.addHeader("Content-Disposition", "attachment;filename="+fileName);  
			String len = String.valueOf(file.length());  
			response.setHeader("Content-Length", len);  
			OutputStream out = response.getOutputStream();  
			FileInputStream in = new FileInputStream(file);  
			byte[] b = new byte[1024];  
			int n;  
			while((n=in.read(b))!=-1){  
				out.write(b, 0, n);  
			}  
			in.close();  
			out.close();  
		} catch (FileNotFoundException e) {  
			e.printStackTrace();  
		} catch (IOException e) {  
			e.printStackTrace();  
		}  
	}*/
	
}
