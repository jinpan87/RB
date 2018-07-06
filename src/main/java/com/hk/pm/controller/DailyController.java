package com.hk.pm.controller;

import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.hk.pm.entity.Record;
import com.hk.pm.entity.Users;
import com.hk.pm.service.DailyService;
import com.hk.pm.service.UsersService;
import com.hk.pm.util.R;

import net.sf.json.JSONArray;

@RestController
@RequestMapping(value = "daily")
public class DailyController extends BaseController {
	@Autowired
	DailyService dailyService;
	@Autowired
	UsersService usersService;

	@RequestMapping(value = "/writeDaily.do") // 展示填写日报界面
	public ModelAndView shwoWriteDaily(HttpServletResponse response, HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		String userId = request.getParameter("userId");
		String pType = "1";
		map.put("pType", pType);
		map = dailyService.getDailyMessage(map);
		Record record = new Record();
		record.setrUid(Integer.valueOf(userId));
		ModelAndView modelAndView = new ModelAndView("jsp/smartadmin/daily/writeDaily.jsp");
		modelAndView.addObject("record", record);
		modelAndView.addAllObjects(map);
		return modelAndView;
	}

	@RequestMapping(value = "/checkTime.do") // 初始化填写日志界面
	public R checkTime(HttpServletResponse response, HttpServletRequest request, Record record) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Map<String, Object> map = new HashMap<String, Object>();
		DecimalFormat df = new DecimalFormat("0.00");// 格式化小数
		String kssj = record.getrKssj();
		String jssj = record.getrJssj();
		if ((!kssj.equals("") && kssj != null) && (!jssj.equals("") && jssj != null)) {
			try {
				Date rKssj = sdf.parse(kssj);
				Date rJssj = sdf.parse(jssj);
				long start = rKssj.getTime();
				long end = rJssj.getTime();
				String num = df.format((float) (end - start) / (3600 * 1000));// 返回的是String类
				map.put("hour", num);

			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return R.error();
			}
		}
		return R.ok(map);
	}

	@RequestMapping(value = "/projectList.do") // 初始化填写日志界面
	public ModelAndView projectList(HttpServletResponse response, HttpServletRequest request, Record record) {
		ModelAndView modelAndView = new ModelAndView("jsp/smartadmin/daily/writeDaily.jsp");
		Map<String, Object> map = new HashMap<String, Object>();
		String cityId = record.getrCsmc();
		String typeId = record.getrXmlb();
		map.put("cityId", cityId);
		map.put("pType", typeId);
		map = dailyService.getDailyMessage(map);
		map.put("record", record);
		modelAndView.addAllObjects(map);
		return modelAndView;
	}

	@RequestMapping(value = "/selectCounty.do") // 根据城市id获得区县列表
	public ModelAndView selectCounty(HttpServletResponse response, HttpServletRequest request, Record record) {
		ModelAndView modelAndView = new ModelAndView("jsp/smartadmin/daily/writeDaily.jsp");
		Map<String, Object> map = new HashMap<String, Object>();
		String cityId = record.getrCsmc();
		String typeId = record.getrXmlb();
		map.put("pType", typeId);
		map.put("cityId", cityId);
		map = dailyService.getDailyMessage(map);
		map.put("record", record);
		modelAndView.addAllObjects(map);
		return modelAndView;
	}

	@RequestMapping(value = "/addRecord.do") // 添加日报操作
	public R addRecord(HttpServletResponse response, HttpServletRequest request, Record record) {
		try {
			if (!record.getrBfsj().isEmpty() && record.getrBfsj() != null) {
				String baifangshijian = record.getrBfsj();
				record.setrBfsj(baifangshijian);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		Date dateTime = new Date();
		String createTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(dateTime);
		record.setrCreatedate(createTime);
		dailyService.addRecord(zhuanhuan(record));
		return R.ok();
	}
	/**
	 * 查看和修改日报信息
	 * @param response
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/dailyMsg.do")
	public ModelAndView dailyMsg(HttpServletResponse response, HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		String userid = request.getParameter("userId");
		String roleId = request.getParameter("roleId");
		// String[] strArray=userid.split("?");
		// userid=strArray[0];
		map.put("rUid", userid);
		map.put("roleId", roleId);
		List<Map> list = new ArrayList<Map>();
		ModelAndView modelAndView = new ModelAndView("jsp/smartadmin/daily/dailyMsg.jsp");
		list = dailyService.queryRecordList(map);
		JSONArray jsonArray = JSONArray.fromObject(list);
		modelAndView.addObject("data", jsonArray);
		modelAndView.addObject("userId", userid);
		modelAndView.addObject("roleId", roleId);
		return modelAndView;
	}
	@RequestMapping(value = "/updateDaily.do")
	public ModelAndView updateDaily(HttpServletResponse response, HttpServletRequest request) {
		Record record=new Record();
		String id = request.getParameter("id");
		record=dailyService.queryRecord(Integer.valueOf(id));
		record=dailyService.stringToInt(record);//将城市、项目类别的名称转换成对应的id
		ModelAndView modelAndView = new ModelAndView("jsp/smartadmin/daily/writeDaily.jsp");
		Map<String, Object> map = new HashMap<String, Object>();
		String cityId = record.getrCsmc();
		String typeId = record.getrXmlb();
		map.put("cityId", cityId);
		map.put("pType", typeId);
		map = dailyService.getDailyMessage(map);
		map.put("record", record);
		modelAndView.addAllObjects(map);
		return modelAndView;
	}

	@RequestMapping(value = "/dailyCheck.do") // 根据不同的角色展示不同的审批列表
	public ModelAndView dailyCheck(HttpServletResponse response, HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<Map> list = new ArrayList<Map>();
		ModelAndView modelAndView = new ModelAndView("jsp/smartadmin/daily/dailyCheck.jsp");
		String userId=request.getParameter("userId");
		String roleId = request.getParameter("roleId");
		Users users=new Users();
		users=usersService.selectUsers(Integer.valueOf(userId));
		String userName ="";
		userName=users.getRealname();
		map.put("roleId", roleId);
		map.put("userName", userName);
		map.put("name", null);
		map.put("state", null);
		list = dailyService.queryCheckList(map);
		JSONArray jsonArray = JSONArray.fromObject(list);
		modelAndView.addObject("data", jsonArray);
		modelAndView.addObject("userName", userName);
		modelAndView.addObject("userId", userId);
		modelAndView.addObject("roleId", roleId);
		return modelAndView;
	}

	@RequestMapping(value = "/dailyCheck2.do") // 根据不同的角色不同的条件展示不同的审批列表
	public ModelAndView dailyCheck2(HttpServletResponse response, HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView("jsp/smartadmin/daily/dailyCheck.jsp");
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> mapp = new HashMap<String, Object>();
		List<Map> list = new ArrayList<Map>();
		String state = request.getParameter("state");
		String userName = request.getParameter("userName");
		String name = request.getParameter("name");
		String roleId = request.getParameter("roleId");
		String userId = request.getParameter("userId");
		name = f(name);// 去掉字符串前面的空格
		map.put("roleId", roleId);
		map.put("name", name);
		map.put("state", state);
		list = dailyService.queryCheckList(map);
		JSONArray jsonArray = JSONArray.fromObject(list);
		mapp.put("data", jsonArray);
		modelAndView.addObject("data", jsonArray);
		modelAndView.addObject("userName", userName);
		modelAndView.addObject("name", name);
		modelAndView.addObject("roleId", roleId);
		modelAndView.addObject("userId", userId);
		return modelAndView;
	}

	@RequestMapping(value = "/dailyUpdate.do") // 根据不同的角色不同的条件展示不同的审批列表
	public Map<String, Object> dailyUpdate(HttpServletResponse response, HttpServletRequest request, Record record) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userName", record.getrState());
		dailyService.updateRecord(record);
		return map;
	}
	
	
	@RequestMapping(value = "/dailyThreeDay.do") //三天内需要拜访的日报
	public ModelAndView dailyThreeDay(HttpServletResponse response, HttpServletRequest request, Record record) {
		ModelAndView modelAndView=new ModelAndView("jsp/smartadmin/daily/dailyMsg.jsp");
		List<Map> list=new ArrayList<Map>();
		list=dailyService.selectByBfsj(record);
		JSONArray jsonArray=JSONArray.fromObject(list);
		modelAndView.addObject("data", jsonArray);
		return modelAndView;
	}
	
	@RequestMapping(value = "/dailyWeek.do") //一个星期没有写日报任务的项目
	public ModelAndView dailyWeek(HttpServletResponse response, HttpServletRequest request, Record record) {
		ModelAndView modelAndView=new ModelAndView("jsp/smartadmin/daily/dailyMsg.jsp");
		List<Map> listProject=new ArrayList<Map>();
		Map<String, Object> map=new HashMap<String,Object>();
		Users users=new Users();
		users=usersService.selectUsers(record.getrUid());
		map.put("manager", users.getRealname());
		listProject=dailyService.selectByWeek(map);
		JSONArray jsonArray=JSONArray.fromObject(listProject);
		modelAndView.addObject("data", jsonArray);
		return modelAndView;
	}

}
