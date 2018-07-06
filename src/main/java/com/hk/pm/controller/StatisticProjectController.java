package com.hk.pm.controller;

import java.util.ArrayList;
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
import com.hk.pm.service.DailyService;
import com.hk.pm.service.ProjectService;
import com.hk.pm.util.R;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@RestController
public class StatisticProjectController extends BaseController {
	@Autowired
	ProjectService projectService;
	@Autowired
	DailyService dailyService;

	@RequestMapping(value = "statisticProject.do")
	public ModelAndView statisticProject(HttpServletResponse response, HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView("jsp/smartadmin/project/statisticProject.jsp");
		Map<String, Object> map = new HashMap<String, Object>();
		String typeId = request.getParameter("typeId");
		String code = request.getParameter("code");
		if (typeId == null || typeId.isEmpty()) {
			typeId = "1";
		}
		map.put("typeId", typeId);
		List<Map> list = new ArrayList<Map>();
		list = projectService.queryProjectList(map);
		// Collections.reverse(list);
		Record record = new Record();
		if (code == null || code.isEmpty()) {
			code = list.get(0).get("code") + "";
		}
		record.setrXmbh(code);
		map = dailyService.getStatisticProject(record);
		map.put("list", list);
		JSONObject json = JSONObject.fromObject(map);
		modelAndView.addObject("json", json);
		return modelAndView;
	}
	@RequestMapping(value = "statisticProject2.do")
	public ModelAndView statisticProject2(HttpServletResponse response, HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView("jsp/smartadmin/project/statisticProject.jsp");
		try {
			
		Map<String, Object> map = new HashMap<String, Object>();
		String typeId = request.getParameter("typeId");
		String code = request.getParameter("code");
		if (typeId == null || typeId.isEmpty()) {
			typeId = "1";
		}
		map.put("typeId", typeId);
		List<Map> list = new ArrayList<Map>();
		list = projectService.queryProjectList(map);
		// Collections.reverse(list);
		Record record = new Record();
		if (code == null || code.isEmpty()) {
			code = list.get(0).get("code") + "";
		}
		record.setrXmbh(code);
		map = dailyService.getStatisticProject(record);
		map.put("list", list);
		JSONObject json = JSONObject.fromObject(map);
		modelAndView.addObject("json", json);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return modelAndView;
	}

}
