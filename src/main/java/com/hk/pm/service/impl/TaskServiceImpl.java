package com.hk.pm.service.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.pm.dao.TaskMapper;
import com.hk.pm.dao.UsersMapper;
import com.hk.pm.entity.Task;
import com.hk.pm.entity.Users;
import com.hk.pm.service.TaskService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Service
public class TaskServiceImpl implements TaskService {
	@Autowired
	UsersMapper userDao;
	@Autowired
	TaskMapper taskDao;
	
	@Override
	public Map<String, Object> initTask(Map map) {
		// TODO Auto-generated method stub
		Map<String, Object> mapp=new HashMap<String,Object>();
		List<Users> list=new ArrayList<Users>();
		String permission=map.get("permission")+"";
		switch (permission) {
		case "2":
			map.put("permission", 5);
			break;

		default:
			break;
		}
		list=userDao.selectUserList(null);
		mapp.put("userList", list);
		return mapp;
	}

	@Override
	public void addTask(Task task) {
		// TODO Auto-generated method stub
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmss");
		Date date =new Date();
		String code=task.getCustomer()+sdf.format(date);
		task.setCode(code);
		taskDao.insertSelective(task);
		
	}

	@Override
	public List<Map> queryTaskList(Task task) {
		// TODO Auto-generated method stub
		List<Map> list=new ArrayList<Map>();
		List<Map> listdata=new ArrayList<Map>();
		list= taskDao.selectTaskListByState(task);
		for (int i = 0; i < list.size(); i++) {
			Map map=list.get(i);
			String progress=map.get("progress")+"";
			if(progress.length()>0){
				JSONArray jsonArray=JSONArray.fromObject(progress);
				JSONObject json=jsonArray.getJSONObject(jsonArray.size()-1);
				String pro=json.getString("progress");
				map.put("progress", pro);
			}
			listdata.add(map);
		}
		return listdata;
	}

	@Override
	public int updateState(Task task) {
		// TODO Auto-generated method stub
		
		return taskDao.updateState(task);
	}

	@Override
	public int updateProgress(Task task) {
		// TODO Auto-generated method stub
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Map<String,Object> map=new HashMap<String,Object>();
		String progress="";
		Task oldTask=new Task();
		Date date=new Date();
		String update=sdf.format(date);
		map.put("update", update);
		oldTask=taskDao.selectByCode(task);
		progress=oldTask.getProgress();
		JSONArray jsonArray=new JSONArray();
		Optional<String> optional=Optional.ofNullable(progress);
		if(optional.isPresent()){
			jsonArray=JSONArray.fromObject(optional.get());
		}
		map.put("progress", task.getProgress());
		jsonArray.add(map);
		task.setProgress(jsonArray.toString());
		return taskDao.updateProgress(task);
	}

	@Override
	public JSONArray showProgress(Task task) {
		// TODO Auto-generated method stub
		Task taskk=new Task();
		taskk=taskDao.selectByCode(task);
		String progress=taskk.getProgress();
		JSONArray jsonArray=JSONArray.fromObject(progress);
		return jsonArray;
	}

}
