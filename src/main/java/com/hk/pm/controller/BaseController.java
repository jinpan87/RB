package com.hk.pm.controller;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

import com.hk.pm.entity.BaseObject;
import com.hk.pm.entity.Contract;
import com.hk.pm.entity.ProjectBase;
import com.hk.pm.entity.ProjectProgress;
import com.hk.pm.entity.Record;
import com.hk.pm.entity.ReturnMoney;
import com.hk.pm.entity.utilEntity.UtilProject;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class BaseController {
	protected static Map<String,Object> map=new HashMap<String,Object>();
	static{
		map.put("typeCode", null);
	}

	/**
	 * 接口返回json信息
	 * @param response
	 * @param obj
	 * @return
	 */
	public String output(HttpServletResponse response,String obj) {
//		Map<String,Object> map = new HashMap<String,Object>();
		try {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			OutputStream os = response.getOutputStream();
			BufferedWriter bufWriter = new BufferedWriter(
					new OutputStreamWriter(os));
			bufWriter.write(obj);
			bufWriter.flush();
			bufWriter.close();
		} catch (Exception e) {
			return null;
		}
		return null;
	}
	
	public JSONObject outputJson2(HttpServletRequest request) throws IOException{
//		request.setCharacterEncoding("UTF-8");         //返回页面防止出现中文乱码
		BufferedReader reader = new BufferedReader(new InputStreamReader(request.getInputStream(),URLEncoder.encode("utf-8")));//post方式传递读取字符流

		String jsonStr = null;

		StringBuilder result = new StringBuilder();

		try {

		while ((jsonStr = reader.readLine()) != null) {

		result.append(jsonStr);

		}

		} catch (IOException e) {

		e.printStackTrace();

		}
		String resultStr=result.toString();
		resultStr=URLDecoder.decode(URLDecoder.decode(resultStr, "UTF-8"));
		reader.close();// 关闭输入流

		JSONObject jsonObject = JSONObject.fromObject(resultStr); // 取一个json转换为对象
		return jsonObject;
	}
	public JSONObject outputJson(HttpServletRequest request) throws IOException {
		request.setCharacterEncoding("UTF-8");
		JSONObject jsonObject = null;
		String result=request.getParameter("vars");
		jsonObject = JSONObject.fromObject(result); // 取一个json转换为对象
		jsonObject=upDate(jsonObject);
		return jsonObject;
	}
	public JSONObject upDate(JSONObject jsonObject){
		 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd 23:59:59"); 
		 SimpleDateFormat sdfend = new SimpleDateFormat("yyyy-MM-dd 00:00:00"); 
		boolean bool=jsonObject.containsKey("beginDate")&&!jsonObject.getString("beginDate").equals("")&&jsonObject.containsKey("endDate")&&!jsonObject.getString("endDate").equals("");
		if(bool){
			String beginDate=jsonObject.get("beginDate")+"";
			int end=Integer.valueOf(jsonObject.get("endDate")+"");
			Date date=new Date(Long.valueOf(beginDate));
			Calendar calendar=Calendar.getInstance();
			calendar.setTime(date);
			beginDate=sdf.format(calendar.getTime());
			calendar.add(calendar.DATE, end);
			String endDate=sdfend.format(calendar.getTime());
			jsonObject.put("beginDate", endDate);
			jsonObject.put("endDate", beginDate);
			
		}
		return jsonObject;
	}
	public static String timeStamp2Date(String seconds,String format) {  
		        if(seconds == null || seconds.isEmpty() || seconds.equals("null")){  
		             return "";  
		         }  
		         if(format == null || format.isEmpty()){
		             format = "yyyy-MM-dd HH:mm:ss";
		        }   
		         SimpleDateFormat sdf = new SimpleDateFormat(format);  
		        return sdf.format(new Date(Long.valueOf(seconds)));  
		     }  
	//转换模型
	public static ModelAndView getModel2(List list,ModelAndView modelAndView){
		JSONArray jsonArray = JSONArray.fromObject(list);  
		modelAndView.addObject("data", jsonArray);
		return modelAndView;
	}
	//返回模型、转换时间格式
	public static ModelAndView getModel(List list,ModelAndView modelAndView){
		List listdate=new ArrayList();
		List listNoDate=new ArrayList();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		for (int i = 0; i < list.size(); i++) {
			Map map=(Map) list.get(i);
			if(map.containsKey("createTime")){
				Map mapdate=new HashMap();
				Date date=(Date) map.get("createTime");
				String dateStr=sdf.format(date);
				map.put("createTime", dateStr);
			}
			listNoDate.add(map);
		}
		  
		JSONArray jarrayNoDate = JSONArray.fromObject(listNoDate);  
		modelAndView.addObject("data", jarrayNoDate);
		return modelAndView;
	}
	public static Map<String,Object> getMap(List list){
		Map<String,Object> mapdata=new HashMap<String,Object>();
		List listdate=new ArrayList();
		List listNoDate=new ArrayList();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		for (int i = 0; i < list.size(); i++) {
			Map map=(Map) list.get(i);
			if(map.containsKey("createTime")){
				Map mapdate=new HashMap();
				Date date=(Date) map.get("createTime");
				String dateStr=sdf.format(date);
				map.put("createTime", dateStr);
			}
			listNoDate.add(map);
		}
		
		JSONArray jarrayNoDate = JSONArray.fromObject(listNoDate);  
		mapdata.put("data", listNoDate);
		return mapdata;
	}
	public Map<String,Object> juanhuan(BaseObject baseObject){
		Map<String,Object> map=new HashMap<String,Object>();
		Contract contract=new Contract();
		contract.setcCode(baseObject.getcCode());
		contract.setcName(baseObject.getcName());
		contract.setcTotalAmount(baseObject.getcTotalAmount());
		ProjectBase projectBase=new ProjectBase();
		projectBase.setpName(baseObject.getpName());
		projectBase.setpCode(baseObject.getpCode());
		projectBase.setpType(baseObject.getpType());
		projectBase.setpManager(baseObject.getpManager());
		projectBase.setpSname(baseObject.getpSname());
		projectBase.setpScode(baseObject.getpScode());
		projectBase.setpGrew(baseObject.getpGrew());
		projectBase.setpSummary(baseObject.getpSummary());
		projectBase.setpState(baseObject.getpState());
		ReturnMoney returnMoney=new ReturnMoney();
		returnMoney.setrUnreturnMoney(baseObject.getrUnreturnMoney());
		returnMoney.setrBackAmount(baseObject.getrBackAmount());
		returnMoney.setrCount(baseObject.getrCount());
		returnMoney.setrBackDay(baseObject.getrBackDay());
		map.put("Contract", contract);
		map.put("ReturnMoney", returnMoney);
		map.put("ProjectBase", projectBase);
		return map;
	}
	public Map<String,Object> juanhuan2(BaseObject baseObject){
		Map<String,Object> map=new HashMap<String,Object>();
		Contract contract=new Contract();
		contract.setId(baseObject.getcId());
		contract.setcCode(baseObject.getcCode());
		contract.setcName(baseObject.getcName());
		contract.setcTotalAmount(baseObject.getcTotalAmount());
		ProjectBase projectBase=new ProjectBase();
		projectBase.setId(baseObject.getpId());
		projectBase.setpName(baseObject.getpName());
		projectBase.setpCode(baseObject.getpCode());
		projectBase.setpType(baseObject.getpType());
		projectBase.setpManager(baseObject.getpManager());
		projectBase.setpSname(baseObject.getpSname());
		projectBase.setpScode(baseObject.getpScode());
		projectBase.setpGrew(baseObject.getpGrew());
		projectBase.setpSummary(baseObject.getpSummary());
		projectBase.setpState(baseObject.getpState());
		projectBase.setpOverCause(baseObject.getpOverCause());
		ReturnMoney returnMoney=new ReturnMoney();
		returnMoney.setId(baseObject.getrId());
		returnMoney.setrUnreturnMoney(baseObject.getrUnreturnMoney());
		returnMoney.setrBackAmount(baseObject.getrBackAmount());
		returnMoney.setrCount(baseObject.getrCount());
		returnMoney.setrBackDay(baseObject.getrBackDay());
		map.put("Contract", contract);
		map.put("ReturnMoney", returnMoney);
		map.put("ProjectBase", projectBase);
		return map;
	}
	//去掉字符串前面的空格
	public static String f(String s){
	    for(int i=0;i<s.length();i++){
	            if(s.charAt(i)!=' '){
	                    s=s.substring(i,s.length());
	                    break;
	             }
	    }
	    return s;
	}
	
	//时间转字符串
	public static String DateToString(Date date){
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateStr="";
		dateStr=sdf.format(date);
		return dateStr;
	}
	
	//字符串转时间
	public static Date StringToDate(String str){
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
		Date date = null;
		try {
			date = sdf.parse(str);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return date;
	}
	public Record zhuanhuan(Record r){
		String xmlb=r.getrXmlb();
		switch (xmlb) {
		
		case "1":
			r.setrXmlb("销售");
			break;
		case "2":
			r.setrXmlb("市场拓展");
			break;
		case "3":
			r.setrXmlb("回款");
			break;
		case "4":
			r.setrXmlb("关系维护");
			break;
		case "6":
			r.setrXmlb("自营");
			break;
		case "7":
			r.setrXmlb("专项");
			break;
		case "8":
			r.setrXmlb("日常");
			break;

		default:
			break;
		}
		return r;
	}
	
	public Map<String,Object> utilProjectToProjectBase(UtilProject utilProject){
		Map<String,Object> map=new HashMap<String,Object>();
		ProjectBase projectBase=new ProjectBase();
		 Pattern pattern = Pattern.compile("[0-9]*");
		 Matcher isNum = pattern.matcher(utilProject.getId());
         if( !isNum.matches() ){
        	 projectBase.setId(null);
         }else {
        	 projectBase.setId(Long.valueOf(utilProject.getId())); 
         }
		projectBase.setCreateTime(utilProject.getCreateTime());
		projectBase.setpCity(utilProject.getCity());
		projectBase.setpCode(utilProject.getCode());
		projectBase.setpCounty(utilProject.getCounty());
		projectBase.setpCustomerCode(utilProject.getCustomerCode());
		projectBase.setpManager(utilProject.getManager());
		projectBase.setpMoney(Float.valueOf(utilProject.getMoney()));
		projectBase.setpName(utilProject.getName());
		projectBase.setpOriginalContractor(utilProject.getOriginalContractor());
		projectBase.setpOverCause(null);
		projectBase.setpPlanAmount(Float.valueOf(utilProject.getPlanAmount()));
		projectBase.setpPlanMake(utilProject.getPlanMake());
		projectBase.setpProduct(null);
		projectBase.setpProgress(utilProject.getProgresses());
		projectBase.setpProvince(utilProject.getProvince());
		projectBase.setpReady(Integer.valueOf(utilProject.getReady()));
		projectBase.setpRivalCode(utilProject.getRivalCode());
		projectBase.setpScode(null);
		projectBase.setpSname(null);
		projectBase.setpSourceFund(utilProject.getSourceFund());
		projectBase.setpState(Integer.valueOf(utilProject.getState()));
		projectBase.setpSummarize(utilProject.getSummarize());
		projectBase.setpSummary(null);
		projectBase.setpType(utilProject.getTypeId());
		projectBase.setpWrittenDay(utilProject.getWrittenDay());
		projectBase.setStartTime(null);
		projectBase.setUpdateTime(null);
		projectBase.setpGrew(utilProject.getGrew());
		
		ProjectProgress progress=new ProjectProgress();
		progress.setpCode(utilProject.getCode());
		progress.setpProgress(utilProject.getProgresses());
		progress.setUpdateTime(new Date());
		
		map.put("progress", progress);
		map.put("projectBase", projectBase);
		return map;
	}
	public static void main(String[] args) {
		String l=System.currentTimeMillis()+"";
		System.out.println(l);
	}
}
