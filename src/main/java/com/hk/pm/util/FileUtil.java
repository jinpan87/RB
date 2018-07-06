package com.hk.pm.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public class FileUtil {
	public static Map<String, Object> fileUpload(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		int status = 0;
		try {
			MultipartHttpServletRequest multipart = (MultipartHttpServletRequest) request;
			MultipartFile file = multipart.getFile("file");
			// List<MultipartFile> fileList = multipart.getFiles("file");
			// for (MultipartFile file : fileList) {
			Map<String, Object> mapp = new HashMap<String, Object>();
			// 获取文件全名
			String fileFullName = file.getOriginalFilename();
			// 获取后缀名
			String suffixName = fileFullName.substring(fileFullName.lastIndexOf("."));
			String firstName = fileFullName.substring(0, fileFullName.lastIndexOf("."));
			// 对文件名进行转码，不转码中文会乱码
			// firstName = new String(firstName.getBytes("iso8859-1"), "utf-8");
			String pathFileName = ReadConfig.springUtil("address") + File.separator + firstName + suffixName;
			InputStream input = file.getInputStream();
			FileOutputStream fos = new FileOutputStream(pathFileName);
			int i = input.read();
			while (i != -1) {
				fos.write(i);
				i = input.read();
			}
			String path = ReadConfig.springUtil("path") + firstName + suffixName;
			mapp.put("file", path);
			mapp.put("name", firstName);
			input.close();
			fos.close();
			// }
			map.put("code", status);
			map.put("status", "success");
			map.put("data", mapp);
		} catch (Exception e) {
			// TODO: handle exception
			status = 1;
			map.put("code", status);
			map.put("status", "fail");
			map.put("msg", e.getMessage());
		}
		return map;
	}

	public static void download(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String path = "F:" + File.separator + "DownloadFile" + File.separator + "直接硬盘安装原版Win7系统图解全过程.doc";

		// 对中文的文件名进行转码，不然会乱码
		String fileName = new String("直接硬盘安装原版Win7系统图解全过程.doc".getBytes("utf-8"), "iso8859-1");
		response.setHeader("Content-disposition", "attachment; filename=" + fileName);
		response.setContentType("application/x-download");
		response.setCharacterEncoding("UTF-8");
		InputStream input = new FileInputStream(new File(path));
		OutputStream out = response.getOutputStream();
		byte[] b = new byte[1024];
		int length;
		while ((length = input.read(b)) > 0) {
			out.write(b, 0, length);
		}
		input.close();
		out.close();
	}
}
