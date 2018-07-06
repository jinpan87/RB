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

import com.hk.pm.entity.Task;
import com.hk.pm.service.TaskService;
import com.hk.pm.util.R;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@RestController
@RequestMapping(value="task")
public class TaskController {
	@Autowired
	TaskService taskService;
	
	@RequestMapping(value="/writeTask.do")
	public ModelAndView writeTask(HttpServletResponse response, HttpServletRequest request){
		Map<String,Object> map=new HashMap<String,Object>();
		ModelAndView modelAndView=new ModelAndView("jsp/smartadmin/task/writeTask.jsp");
		Task task=new Task();
		String userId=request.getParameter("userId");
		String permission=request.getParameter("roleId");
		map.put("permission", permission);
		map=taskService.initTask(map);
		task.setInitiator(Integer.valueOf(userId));
		modelAndView.addObject("task", task);
		modelAndView.addAllObjects(map);
		return modelAndView;
	}
	@RequestMapping(value="/addTask.do")
	public R addTask(HttpServletResponse response, HttpServletRequest request,Task task){
		try {
			taskService.addTask(task);
			return R.ok();
		} catch (Exception e) {
			// TODO: handle exception
			return R.error();
		}
	}
	@RequestMapping(value="/queryTaskList.do")
	public ModelAndView queryTaskList(HttpServletResponse response, HttpServletRequest request){
		ModelAndView modelAndView=new ModelAndView("jsp/smartadmin/task/showTaskList.jsp");
		Task task=new Task();
		List<Map> list=new ArrayList<Map>();
		String userId=request.getParameter("userId");
		String permission=request.getParameter("roleId");
		switch (permission) {
		case "2":
			task.setInitiator(Integer.valueOf(userId));
			list=taskService.queryTaskList(task);
			break;
		case "1":
			list=taskService.queryTaskList(task);
			break;
		case "4":
			list=taskService.queryTaskList(task);
			break;
		default:
			task.setDoPerson(Integer.valueOf(userId));
			list=taskService.queryTaskList(task);
			task.setDoPerson(null);
			task.setRelevancePerson(userId);
			list.addAll(taskService.queryTaskList(task));
			break;
		}
		JSONArray jsonArray=JSONArray.fromObject(list);
		modelAndView.addObject("data", jsonArray);
		modelAndView.addObject("userId", userId);
		modelAndView.addObject("roleId", permission);
		return modelAndView;
		
	}
	@RequestMapping(value="/searchTask.do")//查询未完成任务或已完成任务
	public ModelAndView searchTask(HttpServletResponse response, HttpServletRequest request){
		ModelAndView modelAndView=new ModelAndView("jsp/smartadmin/task/showTaskList.jsp");
		Task task=new Task();
		List<Map> list=new ArrayList<Map>();
		String roleId=request.getParameter("roleId");
		String userId=request.getParameter("userId");
		String state=request.getParameter("state");
		task.setState(Integer.valueOf(state));
		/*switch (roleId) {
		case "2":
			task.setInitiator(Integer.valueOf(userId));
			list=taskService.queryTaskList(task);
			break;
		default:
			task.setDoPerson(Integer.valueOf(userId));
			list=taskService.queryTaskList(task);
			task.setDoPerson(null);
			task.setRelevancePerson(userId);
			list.addAll(taskService.queryTaskList(task));
			break;
		}*/
		list=taskService.queryTaskList(task);
		JSONArray jsonArray=JSONArray.fromObject(list);
		modelAndView.addObject("data", jsonArray);
		modelAndView.addObject("userId", userId);
		modelAndView.addObject("roleId", roleId);
		return modelAndView;
	}
	
	@RequestMapping(value="/updateState.do")//更新结束任务
	public R updateState(HttpServletResponse response, HttpServletRequest request,Task task){
		
		try {
			taskService.updateState(task);
			return R.ok();
		} catch (Exception e) {
			// TODO: handle exception
			return R.error();
		}
		
	}
	@RequestMapping(value="/upProgress.do")//初始化更新任务进度界面
	public ModelAndView upProgress(HttpServletResponse response, HttpServletRequest request,Task task){
		ModelAndView modelAndView=new ModelAndView("jsp/smartadmin/task/upProgress.jsp");
		modelAndView.addObject("task", task);
		return modelAndView;
		
	}
	@RequestMapping(value="/updateProgress.do")//添加任务进度计划
	public R updateProgress(HttpServletResponse response, HttpServletRequest request,Task task){
		try {
			taskService.updateProgress(task);
			return R.ok();
		} catch (Exception e) {
			// TODO: handle exception
			return R.error();
		}
	}
	@RequestMapping(value="/showProgress.do")//展示详细的工作进度列表
	public ModelAndView showProgress(HttpServletResponse response, HttpServletRequest request,Task task){
		ModelAndView modelAndView=new ModelAndView("jsp/smartadmin/task/showProgress.jsp");
		JSONArray jsonArray=taskService.showProgress(task);
		modelAndView.addObject("data", jsonArray);
		return modelAndView;
	}
	
}
