package com.hk.pm.service;

import java.util.List;
import java.util.Map;

import com.hk.pm.entity.Task;

import net.sf.json.JSONArray;

public interface TaskService {
	Map<String,Object> initTask(Map map);//初始化技术支持发起任务页面
	void addTask(Task task);//创建新的任务
	List<Map> queryTaskList(Task task);//根据任务状态展示任务列表
	int updateState(Task task);//更新任务状态
	int updateProgress(Task task);//跟新任务进度
	JSONArray showProgress(Task task);//展示任务进度
}
